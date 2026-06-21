.class public final Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;


# instance fields
.field public cameraData:Lcom/motorola/camera/CameraData;

.field public cliPreviewBmp:Landroid/widget/ImageView;

.field public cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

.field public cliPreviewLoading:Landroid/widget/ProgressBar;

.field public final data:Landroid/os/Bundle;

.field public dismissed:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    return-void
.end method

.method public static final access$getImage(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x320

    :goto_0
    int-to-double v2, v1

    move/from16 v4, p6

    int-to-double v4, v4

    div-double/2addr v2, v4

    new-instance v4, Landroid/util/Size;

    move/from16 v5, p7

    int-to-double v5, v5

    mul-double/2addr v5, v2

    double-to-int v2, v5

    invoke-direct {v4, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Lcom/motorola/camera/CameraData;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    move-wide/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v13, p8

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-object/from16 v16, v4

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v14}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    iput-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    check-cast v15, Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v15}, Lcom/motorola/camera/cli/content/CliContentManager;->getUiContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v4, v5

    :cond_2
    mul-int/2addr v4, v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    move v5, v6

    :cond_3
    div-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v4, v1, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v3, v4

    move v4, v1

    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v1, v5, :cond_5

    const/16 v1, 0x5a

    if-eq v13, v1, :cond_6

    const/16 v1, 0x10e

    if-eq v13, v1, :cond_6

    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v1, v5, :cond_7

    if-eqz v13, :cond_6

    const/16 v1, 0xb4

    if-ne v13, v1, :cond_7

    :cond_6
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_7
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v4}, Landroid/util/Size;-><init>(II)V

    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v3, :cond_9

    invoke-virtual {v15}, Lcom/motorola/camera/cli/content/CliContentManager;->getUiContext()Landroid/content/Context;

    move-result-object v4

    sget-boolean v5, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v5, :cond_8

    invoke-static {}, Landroidx/media3/extractor/text/pgs/PgsParser;->getInstance()Landroidx/media3/extractor/text/pgs/PgsParser;

    move-result-object v4

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;

    invoke-direct {v6, v4, v5}, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Landroid/net/Uri;)V

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v4, v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mWidth:I

    iput v1, v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mHeight:I

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v1

    iput v1, v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getDateModified()J

    move-result-wide v7

    iput-wide v4, v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    iput-wide v7, v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    iput-boolean v2, v6, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    new-instance v1, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v3, v2}, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {v6, v1}, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->into(Lcom/google/mlkit/common/internal/zzb;)V

    return-void

    :cond_8
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    invoke-virtual {v2, v4, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->loadThumbnail(Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public final getCameraData$1()Lcom/motorola/camera/CameraData;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public final onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public final onViewAdded()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "Buffer size is smaller than bitmap size: bitmap: "

    const-string v2, "GLOBAL_UUID"

    iget-object v3, v1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->data:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v2, "THUMB_PATH"

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "FILE_NAME"

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FILE_PATH"

    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ORIENTATION"

    invoke-virtual {v3, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v8, "THUMB_WIDTH"

    invoke-virtual {v3, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "THUMB_HEIGHT"

    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "DATE_TAKEN"

    invoke-virtual {v3, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v13, "DATE_MODIFIED"

    invoke-virtual {v3, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v15, "CliPhotoPreviewPresentation"

    if-lez v8, :cond_0

    if-gtz v10, :cond_1

    :cond_0
    move v7, v8

    move v8, v10

    goto/16 :goto_2

    :cond_1
    if-eqz v2, :cond_3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v4}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, "readFile(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", buffer: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t read bitmap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Thumbnail path: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v1, v3}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->showImagePreview(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    const-string v0, "URI"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v15, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v15}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_4

    move-wide v2, v4

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v10

    move-wide v10, v11

    move-wide v12, v13

    move-object v4, v0

    invoke-static/range {v1 .. v13}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->access$getImage(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V

    return-void

    :cond_4
    move-wide v2, v4

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v10

    move-wide v10, v11

    move-wide v12, v13

    move-object v4, v0

    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$lambda$3$lambda$2$$inlined$doOnLayout$1;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$onViewAdded$lambda$3$lambda$2$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIJJ)V

    invoke-virtual {v15, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    return-void

    :goto_2
    const-string v0, ", height="

    const-string/jumbo v1, "}"

    const-string v2, "Bitmap cannot be created. Width and Height must be greater than zero. {width="

    invoke-static {v7, v8, v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onViewInflated()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a00eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLayout:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    const v2, 0x7f0a00ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ProgressBar;

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLoading:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final onViewRemoved()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->dismissed:Z

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/motorola/camera/thumbnail/factory/ThumbnailProvider;->ENABLE_NEW_ENGINE:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLargeKindBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;->mThumbnailList:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLargeKindBitmapTaskMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d003c

    return p0
.end method

.method public final setBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;Ljava/lang/Boolean;)V
    .locals 0

    const-string p3, "cameraData"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->dismissed:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance p3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 p4, 0x9

    invoke-direct {p3, p4, p0, p2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setLargeKindBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Z)V
    .locals 0

    return-void
.end method

.method public final showImagePreview(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->dismissed:Z

    if-eqz v0, :cond_0

    const-string p0, "CliPhotoPreviewPresentation"

    const-string/jumbo p1, "showImagePreview called, but view is dismissed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewLoading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;->cliPreviewBmp:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI_MIRROR_INSTANT_REVIEW:Z

    if-eqz v1, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/presentation/CliPhotoPreviewPresentation;I)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    return-void
.end method
