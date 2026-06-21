.class public final Lcom/motorola/camera/storage/MediaFilePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0006\u0010\u0016\u001a\u00020\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/motorola/camera/storage/MediaFilePath;",
        "Landroid/os/Parcelable;",
        "mediaVolume",
        "Lcom/motorola/camera/storage/MediaVolume;",
        "relativePath",
        "",
        "fileName",
        "<init>",
        "(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V",
        "getMediaVolume",
        "()Lcom/motorola/camera/storage/MediaVolume;",
        "getRelativePath",
        "()Ljava/lang/String;",
        "getFileName",
        "withFileName",
        "newFileName",
        "withMediaVolume",
        "newMediaVolume",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/storage/MediaFilePath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

.field private final relativePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/storage/MediaVolume$Creator;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/storage/MediaVolume$Creator;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/storage/MediaFilePath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mediaVolume"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "relativePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/storage/MediaFilePath;Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/storage/MediaFilePath;->copy(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/motorola/camera/storage/MediaVolume;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 0

    const-string p0, "mediaVolume"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "relativePath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/storage/MediaFilePath;

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/storage/MediaFilePath;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    return-object p0
.end method

.method public final getRelativePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaVolume;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaFilePath(mediaVolume="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", relativePath="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 2

    const-string v0, "newFileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final withMediaVolume(Lcom/motorola/camera/storage/MediaVolume;)Lcom/motorola/camera/storage/MediaFilePath;
    .locals 2

    const-string v0, "newMediaVolume"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaFilePath;

    iget-object v1, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p0}, Lcom/motorola/camera/storage/MediaFilePath;-><init>(Lcom/motorola/camera/storage/MediaVolume;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaFilePath;->mediaVolume:Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/storage/MediaVolume;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/motorola/camera/storage/MediaFilePath;->relativePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaFilePath;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
