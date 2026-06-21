.class public final Lcom/motorola/camera/background/common/ImageNV12;
.super Lcom/motorola/camera/background/common/ImageBase;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$BA\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rB\u0011\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000c\u0010\u0010J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0003H\u0016J\u0008\u0010 \u001a\u00020\u0003H\u0016J\u0008\u0010!\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\"\u001a\u00020\u001eJ\u0006\u0010#\u001a\u00020\u001eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/ImageNV12;",
        "Lcom/motorola/camera/background/common/ImageBase;",
        "width",
        "",
        "height",
        "lStride",
        "lumaY",
        "",
        "cStride",
        "chromaUV",
        "cacheDir",
        "",
        "<init>",
        "(III[BI[BLjava/lang/String;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "nv12",
        "Lcom/motorola/camera/background/common/IOFile;",
        "getNv12",
        "()Lcom/motorola/camera/background/common/IOFile;",
        "setNv12",
        "(Lcom/motorola/camera/background/common/IOFile;)V",
        "getLStride",
        "()I",
        "setLStride",
        "(I)V",
        "getCStride",
        "setCStride",
        "writeToParcel",
        "",
        "flags",
        "describeContents",
        "getNV12Blob",
        "deleteNV12File",
        "deleteAllFiles",
        "CREATOR",
        "MotCamera-Background_release"
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
.field public static final CREATOR:Lcom/motorola/camera/background/common/ImageNV12$CREATOR;

.field private static final NV12_PREFIX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cStride:I

.field private lStride:I

.field private nv12:Lcom/motorola/camera/background/common/IOFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/common/ImageNV12$CREATOR;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/ImageNV12;->CREATOR:Lcom/motorola/camera/background/common/ImageNV12$CREATOR;

    const-class v0, Lcom/motorola/camera/background/common/ImageNV12;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    const-string v0, "nv12-cache"

    sput-object v0, Lcom/motorola/camera/background/common/ImageNV12;->NV12_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III[BI[BLjava/lang/String;)V
    .locals 7

    const-string v0, "lumaY"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromaUV"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->NV12:Lcom/motorola/camera/background/common/IOFormat;

    const-string v3, "NV12"

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/ImageBase;-><init>(Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;IILjava/lang/String;)V

    .line 2
    iput p3, v1, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    .line 3
    iput p5, v1, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/motorola/camera/background/common/ImageNV12;->NV12_PREFIX:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".nv12"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    sget-object p1, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "caching NV12 file: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    array-length p2, p4

    array-length p3, p6

    add-int/2addr p2, p3

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    const-string p3, "copyOf(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length p3, p4

    array-length p5, p6

    const/4 p7, 0x0

    invoke-static {p6, p7, p2, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length p3, p4

    array-length p4, p6

    .line 10
    array-length p5, p2

    const-string p6, ", chroma="

    const-string p7, ", total="

    .line 11
    const-string/jumbo v0, "writing NV12 luma size="

    invoke-static {p3, p4, v0, p6, p7}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 17
    new-instance p1, Lcom/motorola/camera/background/common/IOFile;

    sget-object p2, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    sget-object p3, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    invoke-direct {p1, p2, p3, p0}, Lcom/motorola/camera/background/common/IOFile;-><init>(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 18
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {p3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/motorola/camera/background/common/ImageBase;-><init>(Landroid/os/Parcel;)V

    .line 26
    const-class v0, Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/IOFile;

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    return-void
.end method


# virtual methods
.method public final deleteAllFiles()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ImageNV12;->deleteNV12File()V

    return-void
.end method

.method public final deleteNV12File()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    return p0
.end method

.method public final getLStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    return p0
.end method

.method public final getNV12Blob()[B
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "un-caching NV12 file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    const-string v4, "File "

    if-gtz v3, :cond_6

    long-to-int v1, v1

    :try_start_1
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v5, v1

    move v6, v3

    :goto_1
    if-lez v5, :cond_2

    invoke-virtual {p0, v2, v6, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v7, :cond_2

    sub-int/2addr v5, v7

    add-int/2addr v6, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    const-string v7, "copyOf(...)"

    if-lez v5, :cond_3

    :try_start_2
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Lkotlin/io/ExposingBufferByteArrayOutputStream;

    const/16 v8, 0x2001

    invoke-direct {v6, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p0, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v1

    if-ltz v5, :cond_5

    invoke-virtual {v6}, Lkotlin/io/ExposingBufferByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    sget-object p0, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    array-length v0, v2

    const-string/jumbo v1, "un-cached NV12 file: size="

    invoke-static {v1, v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is too big to fit in memory."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v3, Ljava/lang/OutOfMemoryError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is too big ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes) to fit in memory."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    return-object v1
.end method

.method public final getNv12()Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-object p0
.end method

.method public final setCStride(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    return-void
.end method

.method public final setLStride(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    return-void
.end method

.method public final setNv12(Lcom/motorola/camera/background/common/IOFile;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/background/common/ImageBase;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
