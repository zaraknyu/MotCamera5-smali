.class public final Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;
.super Lcom/motorola/camera/storage/backend/MediaStoreFile;
.source "SourceFile"


# instance fields
.field public mediaOrientation:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/storage/MediaFilePath;)V
    .locals 1

    const-string v0, "mediaFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/camera/storage/backend/MediaStoreFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaOrientation:I

    const-class p0, Lcom/motorola/camera/storage/backend/MediaStoreFile;

    sget-object p1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p1, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFinishContentValues(Lcom/motorola/camera/storage/MediaType;Lcom/motorola/camera/storage/MediaFilePath;)Landroid/content/ContentValues;
    .locals 2

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mime_type"

    iget-object p1, p1, Lcom/motorola/camera/storage/MediaType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_display_name"

    invoke-virtual {p2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaOrientation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const-string p1, "orientation"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-object v0
.end method

.method public final getInsertContentValues(Lcom/motorola/camera/storage/MediaType;Lcom/motorola/camera/storage/MediaFilePath;)Landroid/content/ContentValues;
    .locals 2

    const-string p0, "filePath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "mime_type"

    iget-object p1, p1, Lcom/motorola/camera/storage/MediaType;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "relative_path"

    invoke-virtual {p2}, Lcom/motorola/camera/storage/MediaFilePath;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_display_name"

    invoke-virtual {p2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "datetaken"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "date_modified"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public final getRenameContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1

    const-string p0, "newName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_display_name"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
