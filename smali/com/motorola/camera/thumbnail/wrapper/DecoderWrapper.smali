.class public abstract Lcom/motorola/camera/thumbnail/wrapper/DecoderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static decode(Lcom/motorola/camera/thumbnail/ThumbnailKey;Lcom/google/mlkit/common/internal/zzb;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-virtual {p0}, Lcom/motorola/camera/thumbnail/ThumbnailKey;->getMajorCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mkv/Sniffer;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mSupportMinorKey:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-virtual {p0}, Lcom/motorola/camera/thumbnail/ThumbnailKey;->getMinorCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mkv/Sniffer;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0, v1}, Lcom/google/mlkit/common/internal/zzb;->onResourceReady(Lcom/motorola/camera/thumbnail/ThumbnailKey;Landroid/graphics/Bitmap;)V

    return-object v1

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/base/Splitter;

    invoke-virtual {v1, p0}, Lcom/google/common/base/Splitter;->get(Lcom/motorola/camera/thumbnail/ThumbnailKey;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x30000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    new-instance v2, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/thumbnail/ThumbnailKey;->getMajorCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/camera/thumbnail/factory/DecoderFactory;->buildDecoder(Lcom/motorola/camera/thumbnail/ThumbnailKey;)Lkotlin/collections/builders/MapBuilder$Itr;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/collections/builders/MapBuilder$Itr;->decode()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/base/Splitter;

    new-instance v4, Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-direct {v4, v2, v5, v6}, Lcom/motorola/camera/ui/DownUpDetector;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v3, v1, v4}, Lcom/google/common/base/Splitter;->put(Ljava/lang/String;Lcom/motorola/camera/ui/DownUpDetector;)V

    :cond_5
    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/mkv/Sniffer;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_6

    invoke-static {v2}, Lcom/motorola/camera/Util;->isAvailableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, p0, v2}, Lcom/google/mlkit/common/internal/zzb;->onResourceReady(Lcom/motorola/camera/thumbnail/ThumbnailKey;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v2

    :goto_1
    const-string p1, "DecoderWrapper"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
