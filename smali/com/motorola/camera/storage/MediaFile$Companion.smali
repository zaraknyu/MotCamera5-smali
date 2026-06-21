.class public final Lcom/motorola/camera/storage/MediaFile$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static fromFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaType;
    .locals 6

    const-string v0, "fileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/storage/MediaType;->values()[Lcom/motorola/camera/storage/MediaType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/motorola/camera/storage/MediaType;->extension:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    const-string v0, "failed to get media type: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;
    .locals 5

    const-string v0, "memento"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFile$Memento;->getBackend()Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "uri is null"

    const-string v2, "finished is null"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFile$Memento;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/tasks/zzr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/zzr;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFile$Memento;->getFinished()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v1, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFile$Memento;->getPath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v3, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v3, v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFile$Memento;->getFinished()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v3, Lcom/motorola/camera/storage/backend/MediaStoreFile;->isFinished:Z

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFile$Memento;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    iput-object p0, v3, Lcom/motorola/camera/storage/backend/MediaStoreFile;->mediaItemUri:Landroid/net/Uri;

    return-object v3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "path is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/motorola/camera/storage/MediaFile$Memento;->getBackend()Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backend is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
