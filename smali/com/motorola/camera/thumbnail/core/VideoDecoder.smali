.class public final Lcom/motorola/camera/thumbnail/core/VideoDecoder;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "SourceFile"


# virtual methods
.method public final decode()Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Ljava/lang/Object;

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    iget v4, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget v5, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    new-instance v6, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    const/4 p0, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method
