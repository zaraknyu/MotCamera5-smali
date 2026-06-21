.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 41

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->$r8$classId:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->editFinish()V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v4, v2

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setMenuOrder(Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onChanged()V

    return-void

    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    invoke-virtual {v1, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    :goto_2
    return-void

    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->dismissWindow()V

    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mFirstDrawing:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x96

    goto :goto_3

    :cond_5
    const-wide/16 v2, 0x3c

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->animateModeFadeOut()V

    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;

    const-string/jumbo v0, "videoReview"

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBitmapFromBuffer()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getBuffer(Landroid/graphics/Bitmap;)Ljava/nio/Buffer;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v1

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/motorola/camera/Util;->getSelectedFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_7
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmssSSS"

    sget-object v4, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v4}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "videoReview_"

    const-string v5, ".jpg"

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v6, v2

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v6, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    const-string v1, "MotoCameraUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_8
    :goto_6
    return-void

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_9
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    return-void

    :pswitch_a
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;

    const-string/jumbo v0, "toString(...)"

    const-string v1, "]"

    const-string v2, "]["

    const-string v15, ","

    const-string v10, "["

    const-string v11, "bounds"

    const-string v12, "false"

    const-string/jumbo v13, "selected"

    const-string v14, "content-desc"

    const-string v3, "class"

    const-string/jumbo v5, "text"

    const-string/jumbo v4, "resource-id"

    const-string v8, "index"

    const-string v6, "hierarchy"

    const-string/jumbo v7, "utf-8"

    move-object/from16 p0, v2

    const-string v2, "node"

    move-object/from16 v19, v10

    const-string v10, ""

    sget-object v20, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    move-object/from16 v21, v11

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    new-instance v11, Ljava/io/File;

    const-string v20, "UxDump"

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v20}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object/from16 v20, v1

    iget-object v1, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    :cond_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    invoke-interface {v1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v7, 0x0

    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "rotation"

    move-object/from16 v23, v0

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "0"

    invoke-interface {v1, v7, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "openGL-canvas"

    invoke-interface {v1, v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v7, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v7, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v7, v14, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v7, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v24, v10

    const-string v10, "[0,0]["

    invoke-direct {v11, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    float-to-int v7, v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v0, v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v10, v22

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, v21

    const/4 v10, 0x0

    invoke-interface {v1, v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "<get-value>(...)"

    const-string v10, "<get-key>(...)"

    move-object/from16 v20, v6

    const-string v6, "getChild(...)"

    const/4 v11, 0x0

    iput v11, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    const/4 v11, 0x1

    iput v11, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    iget-object v11, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object/from16 v25, v11

    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v11

    move-object/from16 v25, v12

    const-string v12, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.CameraPreview"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    move-object/from16 v27, v13

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    :goto_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v27, v13

    const/4 v13, 0x4

    iget-object v12, v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    goto :goto_7

    :cond_b
    move-object/from16 v27, v13

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>()V

    goto :goto_7

    :goto_8
    invoke-virtual {v9, v11, v1, v13, v12}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v11, 0x0

    invoke-interface {v1, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    const-string v12, "getAllComponents(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    sget-object v12, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_c

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2a

    const/16 v13, 0x16

    if-eq v12, v13, :cond_15

    const/16 v13, 0x1b

    if-eq v12, v13, :cond_14

    const/16 v13, 0x1c

    if-eq v12, v13, :cond_d

    const/16 v11, 0x22

    if-eq v12, v11, :cond_c

    const/16 v11, 0x23

    if-eq v12, v11, :cond_c

    goto :goto_9

    :cond_c
    move-object v12, v1

    move-object/from16 v29, v14

    move-object/from16 v1, v19

    move-object/from16 v32, v22

    move-object/from16 v35, v27

    move-object/from16 v19, v4

    move-object/from16 v27, v6

    move-object v4, v7

    move-object/from16 v6, v21

    move-object v7, v0

    move-object/from16 v21, v5

    move-object v5, v10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 p0, v3

    move-object v3, v15

    move-object/from16 v15, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v24

    move-object/from16 v24, v8

    goto/16 :goto_1e

    :cond_d
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_13

    iget v11, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v12

    const-string v13, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeSliderComponent"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->isVisible()Z

    move-result v13

    if-nez v13, :cond_e

    move-object v12, v1

    move-object/from16 v35, v10

    move-object/from16 v1, v27

    move-object/from16 v27, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v15

    move-object v15, v14

    goto/16 :goto_d

    :cond_e
    iget-object v13, v12, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    move-object/from16 v29, v14

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    invoke-virtual {v9, v12, v1, v11, v13}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, v12, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-boolean v14, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v14, :cond_10

    const-string v14, "mode_slider_menu_button"

    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    :cond_10
    :goto_a
    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    const/4 v11, 0x0

    :goto_b
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v14

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-object/from16 v32, v1

    invoke-virtual/range {v31 .. v31}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget-object v14, v14, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/RectF;

    move-object/from16 v31, v9

    iget v9, v14, Landroid/graphics/RectF;->left:F

    iget v14, v14, Landroid/graphics/RectF;->top:F

    move/from16 v33, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v14, v11}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v14, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v9, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v9, v11

    iput v9, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v9, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v9, v11

    iput v9, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v9, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v9, v1

    iput v9, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v9

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v34, v33, 0x1

    move-object/from16 v35, v10

    move-object/from16 v9, v31

    move-object/from16 v12, v32

    move-object v10, v1

    move-object/from16 v1, v27

    move-object/from16 v27, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v29

    move-object/from16 v29, v13

    move/from16 v13, v33

    invoke-virtual/range {v9 .. v14}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v10, 0x0

    invoke-interface {v12, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v13, v29

    move/from16 v11, v34

    move-object/from16 v10, v35

    move-object/from16 v29, v15

    :goto_c
    move-object/from16 v15, v25

    move-object/from16 v25, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v27

    move-object/from16 v27, v1

    move-object v1, v12

    goto/16 :goto_b

    :cond_11
    move-object v12, v1

    move/from16 v33, v11

    move-object/from16 v1, v27

    move-object/from16 v27, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v29

    goto :goto_c

    :cond_12
    move-object v12, v1

    move-object/from16 v35, v10

    move-object/from16 v1, v27

    const/4 v10, 0x0

    move-object/from16 v27, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v29

    invoke-interface {v12, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_d
    move-object v14, v15

    move-object/from16 v15, v25

    move-object/from16 v10, v35

    :goto_e
    move-object/from16 v25, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v27

    move-object/from16 v27, v1

    :goto_f
    move-object v1, v12

    goto/16 :goto_9

    :cond_13
    move-object v12, v1

    move-object/from16 v1, v27

    move-object/from16 v27, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v15

    goto :goto_e

    :cond_14
    move-object v12, v1

    move-object/from16 v1, v27

    move-object/from16 v27, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v15

    move-object/from16 v35, v1

    move-object v15, v6

    move-object v1, v9

    move-object/from16 v29, v14

    move-object/from16 v6, v22

    move-object/from16 v13, v25

    move-object/from16 v9, v27

    move-object/from16 v14, p0

    move-object/from16 p0, v3

    move-object/from16 v22, v19

    move-object/from16 v27, v21

    move-object/from16 v3, v24

    move-object/from16 v19, v4

    move-object v4, v11

    move-object v11, v7

    :goto_10
    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v26, v10

    move-object/from16 v21, v5

    move-object/from16 v24, v8

    goto/16 :goto_19

    :cond_15
    move-object v12, v1

    move-object/from16 v35, v10

    move-object/from16 v1, v27

    move-object/from16 v27, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v15

    move-object v15, v14

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_29

    iget v10, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    const-string v11, "Zoom_slider"

    const-class v13, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    const-string v14, "Zoom_button"

    move/from16 v29, v10

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v10

    move-object/from16 v30, v13

    const-string v13, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ZoomComponent"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomBarVisible()Z

    move-result v13

    const/high16 v31, 0x40000000    # 2.0f

    if-eqz v13, :cond_16

    const/4 v13, 0x0

    invoke-interface {v12, v13, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v13, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    move/from16 v32, v13

    add-int/lit8 v13, v32, 0x1

    iput v13, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v32, v14

    const/4 v14, 0x0

    invoke-interface {v12, v14, v8, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v14, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v11, v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v11

    iget-object v13, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v11, v13}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v11

    iget v13, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float v14, v14, v31

    sub-float/2addr v13, v14

    iget v14, v11, Landroid/graphics/PointF;->y:F

    move/from16 v33, v14

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float v14, v14, v31

    sub-float v14, v33, v14

    move-object/from16 v33, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v34, v0

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float v0, v0, v31

    add-float v0, v0, v34

    iget v11, v11, Landroid/graphics/PointF;->y:F

    move/from16 v34, v11

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float v11, v11, v31

    add-float v11, v11, v34

    move-object/from16 v34, v10

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v36, v9

    move-object/from16 v9, v27

    invoke-direct {v10, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    float-to-int v13, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v13, v25

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v14, v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v14, p0

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v0, v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v0, v11

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v24

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, v22

    const/4 v14, 0x0

    invoke-interface {v12, v14, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11

    :cond_16
    move-object/from16 v33, v0

    move-object/from16 v36, v9

    move-object/from16 v34, v10

    move-object/from16 v32, v14

    move-object/from16 v11, v22

    move-object/from16 v13, v25

    move-object/from16 v0, v26

    move-object/from16 v9, v27

    const/4 v14, 0x0

    :goto_11
    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v12, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v14, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v10, v32

    invoke-interface {v12, v14, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v22, v7

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v14, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v14, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    move-object/from16 v25, v6

    move-object/from16 v14, v36

    iget-object v6, v14, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v6

    iget v10, v6, Landroid/graphics/PointF;->x:F

    move/from16 v26, v10

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    div-float v10, v10, v31

    sub-float v10, v26, v10

    iget v14, v6, Landroid/graphics/PointF;->y:F

    move/from16 v26, v14

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->y:F

    div-float v14, v14, v31

    sub-float v14, v26, v14

    move-object/from16 v27, v1

    iget v1, v6, Landroid/graphics/PointF;->x:F

    move/from16 v26, v1

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float v1, v1, v31

    add-float v1, v1, v26

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move/from16 v26, v6

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float v6, v6, v31

    add-float v6, v6, v26

    move-object/from16 v26, v15

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    float-to-int v10, v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v10, v14

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-object/from16 v14, p0

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v1, v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v1, v6

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, v24

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v12, v6, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_22

    move-object/from16 v1, v34

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v15, "zoom_toggle_wide"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v24, v11

    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    move-object/from16 p0, v10

    if-eqz v11, :cond_17

    iget-boolean v10, v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v10, :cond_17

    const-string/jumbo v10, "zoom_toggle_tele"

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleExtraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_18

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_18

    const-string/jumbo v11, "zoom_toggle_tele_extra"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleUltraToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_19

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_19

    const-string/jumbo v11, "zoom_toggle_tele_ultra"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_1a

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_1a

    invoke-virtual {v1, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWide2XToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_1b

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_1b

    const-string/jumbo v11, "zoom_toggle_wide_extra"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_1c

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_1c

    const-string/jumbo v11, "zoom_toggle_uwide"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$7;

    if-eqz v10, :cond_1d

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_1d

    const-string/jumbo v11, "zoom_toggle_macro"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitOriginalToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v10, :cond_1e

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_1e

    const-string/jumbo v11, "zoom_toggle_original"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v10, :cond_1f

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_1f

    invoke-virtual {v1, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitStandardToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v10, :cond_20

    iget-boolean v11, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_20

    const-string/jumbo v11, "zoom_toggle_standard"

    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$8;

    if-eqz v6, :cond_21

    iget-boolean v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v10, :cond_21

    const-string/jumbo v10, "zoom_toggle_close_up"

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    move-object/from16 v6, v21

    goto :goto_12

    :cond_22
    move-object/from16 p0, v10

    move-object/from16 v24, v11

    move-object/from16 v6, v21

    const/4 v1, 0x0

    :goto_12
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v10, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_23

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v15

    move-object/from16 v21, v1

    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    move/from16 v37, v1

    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    move/from16 v38, v1

    iget v1, v15, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float v1, v37, v1

    iget v15, v15, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v15, v38, v15

    move/from16 v37, v1

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v7

    move-object/from16 v7, v35

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    move/from16 v35, v15

    move-object/from16 v15, v19

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v19, v10, 0x1

    move/from16 v39, v10

    const/4 v10, 0x0

    invoke-interface {v12, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v40, v11

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v10, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v10, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v40 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v10, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v10, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v11, v22

    move-object/from16 v1, v26

    invoke-interface {v12, v10, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v40 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isSelected()Z

    move-result v17

    move-object/from16 v22, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v7

    move-object/from16 v7, v27

    invoke-interface {v12, v10, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v10, v36

    iget-object v15, v10, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    move-object/from16 v27, v6

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget v10, v15, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    div-float v10, v10, v31

    iget v15, v15, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v15, v15

    div-float v15, v15, v31

    invoke-virtual {v6, v10, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v15, -0x40800000    # -1.0f

    invoke-virtual {v6, v10, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v10, 0x2

    new-array v15, v10, [F

    const/16 v16, 0x0

    aput v37, v15, v16

    const/16 v18, 0x1

    aput v35, v15, v18

    move-object/from16 v35, v7

    new-array v7, v10, [F

    invoke-virtual {v6, v7, v15}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance v6, Landroid/graphics/PointF;

    aget v10, v7, v16

    aget v7, v7, v18

    invoke-direct {v6, v10, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget v7, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {v40 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    div-float v10, v10, v31

    sub-float/2addr v7, v10

    iget v10, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v40 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float v15, v15, v31

    sub-float/2addr v10, v15

    iget v15, v6, Landroid/graphics/PointF;->x:F

    move/from16 v37, v15

    invoke-virtual/range {v40 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float v15, v15, v31

    add-float v15, v15, v37

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move/from16 v37, v6

    invoke-virtual/range {v40 .. v40}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float v6, v6, v31

    add-float v6, v6, v37

    move-object/from16 v37, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v7, v10

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v7, v15

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p0

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, v24

    const/4 v7, 0x0

    invoke-interface {v12, v7, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v10, v19

    move-object/from16 v1, v21

    move-object/from16 v19, v22

    move-object/from16 v6, v27

    move-object/from16 v27, v35

    move-object/from16 v7, v38

    move-object/from16 v22, v11

    :goto_14
    move-object/from16 v35, v26

    move-object/from16 v26, v37

    goto/16 :goto_13

    :cond_23
    move/from16 v39, v10

    move-object/from16 v37, v26

    move-object/from16 v26, v35

    move-object/from16 v35, v27

    move-object/from16 v27, v6

    move-object/from16 v27, v35

    goto :goto_14

    :cond_24
    move-object/from16 v10, p0

    move-object/from16 v11, v22

    move-object/from16 v37, v26

    move-object/from16 v26, v35

    const/4 v7, 0x0

    move-object/from16 v22, v19

    move-object/from16 v35, v27

    move-object/from16 v27, v6

    move-object/from16 v6, v24

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_15

    :cond_25
    move-object/from16 v14, p0

    move-object/from16 v25, v6

    move-object v6, v11

    move-object/from16 v37, v15

    move-object/from16 v22, v19

    move-object/from16 v27, v21

    move-object/from16 v10, v24

    move-object/from16 v26, v35

    move-object/from16 v35, v1

    move-object v11, v7

    :goto_15
    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_26

    move-object/from16 v1, v34

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v7, :cond_27

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    goto :goto_16

    :cond_26
    move-object/from16 v1, v34

    :cond_27
    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_28

    const/4 v7, 0x0

    invoke-interface {v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v7, v8, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v15, v32

    invoke-interface {v12, v7, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v7, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v34, v1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v7, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v1, v37

    invoke-interface {v12, v7, v1, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v29, v1

    move-object/from16 v15, v25

    move-object/from16 v1, v35

    invoke-interface {v12, v7, v1, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    move-object/from16 p0, v3

    move-object/from16 v1, v36

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v7, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v3

    iget v7, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v19, v4

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    div-float v4, v4, v31

    sub-float/2addr v7, v4

    iget v4, v3, Landroid/graphics/PointF;->y:F

    move/from16 v21, v4

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    div-float v4, v4, v31

    sub-float v4, v21, v4

    move-object/from16 v21, v5

    iget v5, v3, Landroid/graphics/PointF;->x:F

    move/from16 v24, v5

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    div-float v5, v5, v31

    add-float v5, v5, v24

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move/from16 v24, v3

    invoke-virtual/range {v34 .. v34}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v3, v3, v31

    add-float v3, v3, v24

    move-object/from16 v24, v8

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    float-to-int v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v4, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v4, v5

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {v12, v7, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_17

    :cond_28
    move-object/from16 p0, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move-object/from16 v24, v8

    move-object/from16 v15, v25

    move-object/from16 v1, v36

    move-object/from16 v29, v37

    :goto_17
    move-object/from16 v3, p0

    move-object/from16 p0, v14

    move-object/from16 v25, v15

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v24

    move-object/from16 v14, v29

    move-object/from16 v21, v6

    move-object/from16 v19, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object v15, v13

    move-object/from16 v10, v26

    move-object/from16 v6, v27

    move-object/from16 v27, v35

    move-object/from16 v26, v0

    move-object v9, v1

    move-object v1, v12

    :goto_18
    move-object/from16 v0, v33

    goto/16 :goto_9

    :cond_29
    move-object/from16 v14, p0

    move-object/from16 v33, v0

    move-object/from16 v29, v15

    move-object/from16 v10, v24

    move-object/from16 v0, v26

    move-object/from16 v26, v35

    move-object/from16 v35, v1

    move-object v15, v6

    move-object v1, v9

    move-object/from16 v6, v22

    move-object/from16 v9, v27

    move-object/from16 v22, v19

    move-object/from16 v27, v21

    move-object/from16 p0, v25

    move-object/from16 v25, v15

    move-object/from16 v15, p0

    move-object/from16 v21, v6

    move-object/from16 v24, v7

    move-object/from16 v19, v9

    move-object/from16 p0, v14

    move-object/from16 v7, v22

    move-object/from16 v6, v27

    move-object/from16 v14, v29

    move-object/from16 v27, v35

    move-object v9, v1

    move-object/from16 v22, v10

    move-object v1, v12

    move-object/from16 v10, v26

    move-object/from16 v26, v0

    goto :goto_18

    :cond_2a
    move-object v12, v1

    move-object v1, v9

    move-object/from16 v29, v14

    move-object v13, v15

    move-object/from16 v9, v19

    move-object/from16 v15, v25

    move-object/from16 v35, v27

    move-object/from16 v14, p0

    move-object/from16 p0, v3

    move-object/from16 v19, v4

    move-object/from16 v27, v6

    move-object v4, v11

    move-object/from16 v6, v21

    move-object/from16 v3, v22

    move-object/from16 v11, v24

    move-object/from16 v22, v7

    goto/16 :goto_10

    :goto_19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget v4, v1, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-object/from16 v7, v33

    invoke-virtual {v7, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v5

    const-string v8, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeMenuComponent"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    invoke-virtual {v1, v5, v12, v4, v8}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object/from16 v25, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v31, v1

    const-string v1, "mode_%d"

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v32, v3

    filled-new-array/range {v30 .. v30}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-object/from16 v3, v32

    goto :goto_1a

    :cond_2b
    :goto_1b
    move-object/from16 v25, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v3

    move-object/from16 v0, v27

    goto :goto_1c

    :cond_2c
    const/4 v5, 0x0

    goto :goto_1b

    :goto_1c
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v13

    const/4 v13, 0x0

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v10

    iget-object v5, v5, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    move-object/from16 v27, v0

    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v30, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    move-object v0, v14

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v14, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v5, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v5, v1

    iput v5, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v5, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v1, v5

    iput v1, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget v5, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v1, v5

    iput v1, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v5, v26

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, v22

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v22, v13, 0x1

    move-object/from16 v26, v11

    move-object v11, v1

    move-object v1, v9

    move-object/from16 v9, v31

    invoke-virtual/range {v9 .. v14}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v10, 0x0

    invoke-interface {v12, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v14, v0

    move/from16 v13, v22

    move-object/from16 v11, v26

    move-object/from16 v0, v27

    move-object v9, v1

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    move-object/from16 v1, v30

    goto/16 :goto_1d

    :cond_2d
    move-object/from16 v27, v0

    move-object/from16 v5, v26

    goto/16 :goto_1d

    :cond_2e
    move-object/from16 v27, v0

    move-object v1, v9

    move-object v0, v14

    move-object/from16 v4, v22

    move-object/from16 v5, v26

    move-object/from16 v9, v31

    const/4 v10, 0x0

    move-object/from16 v26, v11

    invoke-interface {v12, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1e
    move-object v10, v5

    move-object/from16 v5, v21

    move-object/from16 v8, v24

    move-object/from16 v24, v26

    move-object/from16 v14, v29

    move-object/from16 v22, v32

    move-object/from16 v21, v6

    move-object/from16 v26, v25

    move-object/from16 v6, v27

    move-object/from16 v27, v35

    move-object/from16 v25, v15

    move-object v15, v3

    move-object/from16 v3, p0

    move-object/from16 p0, v0

    move-object v0, v7

    move-object v7, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v1

    goto/16 :goto_f

    :cond_2f
    move-object v5, v9

    move-object v9, v1

    move-object v1, v5

    move-object/from16 v25, v0

    move-object/from16 v32, v3

    move-object/from16 v5, v26

    move-object/from16 v3, p0

    move-object v10, v5

    move-object/from16 p0, v14

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v24

    move-object/from16 v26, v25

    move-object/from16 v14, v29

    move-object/from16 v22, v32

    move-object/from16 v0, v33

    move-object/from16 v19, v1

    move-object/from16 v21, v6

    move-object/from16 v24, v11

    move-object v1, v12

    move-object/from16 v25, v15

    move-object/from16 v6, v27

    move-object/from16 v27, v35

    move-object v15, v13

    goto/16 :goto_9

    :cond_30
    move-object v12, v1

    const/4 v10, 0x0

    invoke-interface {v12, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v20

    invoke-interface {v12, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V

    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void

    :pswitch_b
    move v11, v8

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition$1(Z)V

    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/widget/pager/PagerIndicator;->updateIndicators()V

    return-void

    :pswitch_d
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_e
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_f
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/FpsCalculator;

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_ANIMATED_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, v0, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_31

    const/16 v3, 0xfa0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    :cond_31
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;

    iget-boolean v4, v0, Lcom/motorola/camera/utility/FpsCalculator;->isFull:Z

    iget v5, v0, Lcom/motorola/camera/utility/FpsCalculator;->recordCount:I

    iget v6, v0, Lcom/motorola/camera/utility/FpsCalculator;->nextIndex:I

    iget-object v0, v0, Lcom/motorola/camera/utility/FpsCalculator;->frameTimeArray$delegate:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v5, v6, v0, v4}, Lcom/motorola/camera/ui/uicomponents/AnimatedToastComponent$ToastFeature;-><init>(IIIZ)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_10
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/LottiePreference;->lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_32
    return-void

    :pswitch_11
    move-object/from16 v17, v6

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    const/4 v11, 0x1

    if-eqz v0, :cond_33

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    :cond_33
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    goto :goto_1f

    :cond_34
    move-object/from16 v6, v17

    :goto_1f
    if-eqz v6, :cond_35

    invoke-virtual {v6, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v6, v11}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v6, v11}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_35
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v0, :cond_36

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;

    new-instance v1, Landroidx/room/InvalidationTracker$implementation$1;

    const-class v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    const-string/jumbo v5, "updateState"

    const-string/jumbo v6, "updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V"

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v11, v1

    new-instance v1, Landroidx/room/InvalidationTracker$implementation$1;

    const-class v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    const-string/jumbo v5, "startActivity"

    const-string/jumbo v6, "startActivity(Landroid/content/Intent;)V"

    const/4 v9, 0x6

    invoke-direct/range {v1 .. v9}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {v10, v11, v1}, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_36
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "https://help.motorola.com%s/hc/apps/camera/index.php?v=%s&app=%s&t=%s&m=%s&sku=%s&os=%s"

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, ".cn"

    :goto_20
    move-object v4, v2

    goto :goto_21

    :cond_37
    const-string v2, ""

    goto :goto_20

    :goto_21
    const v2, 0x98a8f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v1, :cond_38

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_38
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v0, :cond_39

    iget-object v1, v3, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v2, 0x7f0603f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_39
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v0, :cond_3a

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->allowThemeDarkening(Landroid/webkit/WebView;)V

    :cond_3a
    return-void

    :pswitch_12
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;->itemView:Landroid/view/View;

    iget-object v2, v0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v3, 0x7f060438

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v4, 0x7f06042e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "backgroundColor"

    filled-new-array {v3, v2}, [I

    move-result-object v2

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x2bc

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Landroidx/transition/Transition$2;

    invoke-direct {v3, v10, v1, v4}, Landroidx/transition/Transition$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3b
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->shouldAnimate:Z

    return-void

    :pswitch_13
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_14
    move v11, v8

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    :pswitch_15
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_16
    move v11, v7

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v1, v11}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    if-nez v2, :cond_3c

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-direct {v2, v11, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(ILjava/lang/Object;)V

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    :cond_3c
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_17
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_22

    :cond_3d
    invoke-virtual {v3, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setRotation(F)V

    :goto_22
    return-void

    :pswitch_18
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3e

    goto :goto_23

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_3f

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v0

    if-eqz v0, :cond_3f

    move v7, v11

    goto :goto_24

    :cond_3f
    :goto_23
    const/4 v7, 0x0

    :goto_24
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_19
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v8, v2, :cond_42

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_41

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_40

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    move v8, v2

    goto :goto_25

    :cond_41
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_42
    const-string v0, "AppInfoComponent"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1a
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->processResult:I

    const/4 v13, 0x4

    if-ne v1, v13, :cond_43

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->shouldShowUI:Z

    if-eqz v1, :cond_43

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->isMenuMode:Z

    if-nez v1, :cond_43

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->videoPortraitToast:Landroid/view/View;

    if-eqz v0, :cond_44

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26

    :cond_43
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->videoPortraitToast:Landroid/view/View;

    if-eqz v0, :cond_44

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_44
    :goto_26
    return-void

    :pswitch_1b
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1c
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->updateEnabledAndType()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->setGridType()V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->updateGridVisibility(Z)V

    :cond_45
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
