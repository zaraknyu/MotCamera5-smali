.class public final Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public mChildIndex:I

.field public volatile mFileName:Ljava/lang/String;

.field public mIndex:I

.field public final mRunnable:Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

.field public volatile mRunning:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 1

    const-string/jumbo v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const-string p1, "mainscreen_dump.xml"

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunnable:Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UxDumpGlComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CAMERA_CONTROL_ACTION:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CAMERA_CONTROL_ACTION:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;->DumpXml:Lcom/motorola/camera/CameraControlReceiver$CameraControlAction;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunnable:Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 4

    const-string v0, "node"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "index"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "resource-id"

    invoke-interface {p2, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "text"

    const-string v0, ""

    invoke-interface {p2, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "class"

    invoke-interface {p2, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "content-desc"

    invoke-interface {p2, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "selected"

    const-string v0, "false"

    invoke-interface {p2, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p4, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object p0

    iget p3, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p3, p4

    iget p4, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v0

    sub-float/2addr p4, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v0

    add-float/2addr v3, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v0

    add-float/2addr p1, p0

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    float-to-int p3, p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, ","

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int p4, p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p4, "]["

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int p4, v3

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bounds"

    invoke-interface {p2, v1, p1, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void
.end method

.method public final parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    const-string v0, "node"

    const/4 v1, 0x0

    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "index"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p4, "resource-id"

    invoke-interface {p3, v1, p4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p1, "text"

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v1, p1, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p4, "class"

    invoke-interface {p3, v1, p4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "content-desc"

    const-string p4, ""

    invoke-interface {p3, v1, p1, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p4, "selected"

    invoke-interface {p3, v1, p4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p5, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object p0

    iget p1, p0, Landroid/graphics/PointF;->x:F

    iget p4, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p5

    iget p5, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr p5, p1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p2

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int p4, p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p4, "]["

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int p4, p5

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bounds"

    invoke-interface {p3, v1, p1, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "mainscreen_dump.xml"

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final unloadTextures()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CAMERA_CONTROL_ACTION:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method
