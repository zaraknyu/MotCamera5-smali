.class public abstract Lcom/motorola/camera/thumbnail/factory/DecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static buildDecoder(Lcom/motorola/camera/thumbnail/ThumbnailKey;)Lkotlin/collections/builders/MapBuilder$Itr;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    iget v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mOrientation:I

    iget v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    iget v3, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    const-string/jumbo v4, "r"

    invoke-static {v0, v4}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/motorola/camera/thumbnail/MediaUtil;->isMediaStoreVideoUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/thumbnail/core/VideoDecoder;

    invoke-direct {p0, v4, v3, v2, v1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Landroid/os/ParcelFileDescriptor;III)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/motorola/camera/thumbnail/core/ImageDecoder;

    invoke-direct {p0, v4, v3, v2, v1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Landroid/os/ParcelFileDescriptor;III)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to open: "

    invoke-static {v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
