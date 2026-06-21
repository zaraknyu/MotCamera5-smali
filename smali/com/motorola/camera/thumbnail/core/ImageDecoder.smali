.class public final Lcom/motorola/camera/thumbnail/core/ImageDecoder;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "SourceFile"


# static fields
.field public static final OPTIONS_QUEUE:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->OPTIONS_QUEUE:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static calculateSampleSize(IIILandroid/graphics/BitmapFactory$Options;)V
    .locals 8

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x5a

    if-eq p0, v2, :cond_0

    const/16 v2, 0x10e

    if-ne p0, v2, :cond_1

    :cond_0
    move v7, v1

    move v1, v0

    move v0, v7

    :cond_1
    int-to-float p0, p1

    int-to-float p1, v0

    div-float/2addr p0, p1

    int-to-float p2, p2

    int-to-float v2, v1

    div-float/2addr p2, v2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p2, p0, p1

    float-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int p2, v3

    mul-float/2addr p0, v2

    float-to-double v3, p0

    add-double/2addr v3, v5

    double-to-int p0, v3

    div-int/2addr v0, p2

    div-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    const/4 p2, 0x1

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/2addr p0, v0

    if-lez p0, :cond_2

    div-int/2addr p1, p0

    div-int/2addr v1, p0

    :cond_2
    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez p0, :cond_3

    iget p1, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez p1, :cond_3

    if-eq p0, p1, :cond_3

    iput-boolean p2, p3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :cond_3
    return-void
.end method

.method public static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    sget-object v0, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->OPTIONS_QUEUE:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final decode()Landroid/graphics/Bitmap;
    .locals 7

    const-class v0, Lcom/motorola/camera/thumbnail/core/ImageDecoder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->OPTIONS_QUEUE:Ljava/util/ArrayDeque;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    :goto_0
    monitor-exit v0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->decodeStream(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v4, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    iget v5, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget v6, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    invoke-static {v4, v5, v6, v2}, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->calculateSampleSize(IIILandroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->decodeStream(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v4}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget v6, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v0, v4

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_1
    :goto_1
    if-eq v0, v4, :cond_2

    :goto_2
    invoke-static {v4}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-static {v2}, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v4, v0

    :goto_3
    :try_start_5
    const-string v5, "MediaDecoder"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_2

    goto :goto_2

    :goto_4
    iget p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    int-to-float p0, p0

    invoke-static {v0, p0, v1, v1}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    invoke-static {v2}, Lcom/motorola/camera/thumbnail/core/ImageDecoder;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw p0

    :goto_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final decodeStream(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Ljava/lang/Object;

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MediaDecoder"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
