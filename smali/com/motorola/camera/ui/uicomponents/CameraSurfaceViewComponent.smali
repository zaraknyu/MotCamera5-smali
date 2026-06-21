.class public final Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static mSurfaceHolder:Ljava/lang/ref/WeakReference;


# instance fields
.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

.field public final mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public mSurfaceSize:Landroid/util/Size;

.field public mVertical:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class p2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mVertical:Z

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x19

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final applyPreviewChange(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->getSurfaceSize()Landroid/util/Size;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v2}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v4

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/google/zxing/Result;

    move-result-object v1

    iget-object v5, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iget v7, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    sget-boolean v7, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mVertical:Z

    if-eqz v7, :cond_2

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldDualPaneScreen()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    :cond_2
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldDualPaneScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v5, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    iget v7, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    int-to-float v0, v0

    cmpl-float v3, v0, v5

    if-lez v3, :cond_4

    div-float/2addr v0, v6

    div-float v5, v0, v5

    goto :goto_0

    :cond_4
    const/high16 v5, 0x3f000000    # 0.5f

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-float v0, v4

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v7, 0xc8

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    neg-float v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p0, p0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Landroid/graphics/Rect;

    iget-object p1, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-object p0, p1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getSurfaceSize()Landroid/util/Size;
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_1

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr p0, v2

    div-int/2addr p0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p0

    :goto_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final inflateViewStub()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a036e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->setSurfaceHolderSize()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->setFrameworkForceHdrLayerPresent(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final initSurface()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object v1, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->WAIT_FOR_SURFACE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/util/Size;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_2

    const-string p0, "CameraSurfaceViewComponent"

    const-string v0, "onPreviewSurfaceReady, null surface holder"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/16 v7, 0x23

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    const/4 v0, 0x0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v8, v2, v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v8}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->applyPreviewChange(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onFoldScreenOrientationChanged(IIIZ)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/16 p2, 0xb4

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mVertical:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->applyPreviewChange(Z)V

    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->applyPreviewChange(Z)V

    return-void
.end method

.method public final setFrameworkForceHdrLayerPresent(Z)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DOLBY_FW_DISPLAY_DEFAULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    :try_start_0
    invoke-static {v0, p0, p1}, Lmotorola/wrap/android/hardware/display/DisplayManager_wrap;->setForceHdrLayerPresent(Landroid/hardware/display/DisplayManager;IZ)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "CameraSurfaceViewComponent"

    const-string/jumbo v0, "setFrameworkForceHdrLayerPresent: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSurfaceHolderSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->getSurfaceSize()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_VIEW_ACTIVE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v1, :cond_8

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v7

    const-string v8, "MODE"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    const-string v8, "FROM_FACING"

    invoke-virtual {p1, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v9, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result p1

    :cond_2
    sget-object v8, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v1, v8, :cond_4

    if-ne p1, v5, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v5

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getTenBitSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_TEN_BIT_MODE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v0, v1, :cond_5

    if-nez v0, :cond_6

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v7, p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode(IIZ)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    if-nez v4, :cond_7

    invoke-virtual {v6}, Lcom/motorola/camera/utility/Flags;->clear()V

    :cond_7
    invoke-virtual {v6, v4, v3}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    if-eqz v4, :cond_13

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->setFrameworkForceHdrLayerPresent(Z)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v0

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionCapabilitySupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDolbyVisionEnabled(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v5

    :cond_9
    or-int/2addr p1, v4

    :cond_a
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->setSurfaceHolderSize()V

    :cond_b
    invoke-virtual {v6, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return-void

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p1, v6, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->setSurfaceHolderSize()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->getSurfaceSize()Landroid/util/Size;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, p1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v6, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    :cond_e
    iget-object p1, v6, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->initSurface()V

    return-void

    :cond_f
    sget-object p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->WAIT_FOR_SURFACE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-virtual {v6, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    return-void

    :cond_10
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v6}, Lcom/motorola/camera/utility/Flags;->clear()V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_11
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    return-void

    :cond_12
    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    :cond_13
    :goto_2
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p1, p4, :cond_1

    sget-object p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    iget-object p1, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    sget-object p2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->WAIT_FOR_SURFACE:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->initSurface()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p3, p4}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceSize:Landroid/util/Size;

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    sput-object p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceSize:Landroid/util/Size;

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
