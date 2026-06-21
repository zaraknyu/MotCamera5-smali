.class public final Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# static fields
.field public static final mInflationStates:Ljava/util/ArrayList;

.field public static mIsSaveComplete:Z


# instance fields
.field public cacheURI:Landroid/net/Uri;

.field public mBg:Landroid/view/View;

.field public mEditButton:Landroid/widget/ImageButton;

.field public mLastUri:Landroid/net/Uri;

.field public mPostCapture:Landroid/widget/ImageView;

.field public mSpinner:Landroid/widget/ProgressBar;

.field public mSpinnerBackground:Landroid/view/View;

.field public final postCaptureListener:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

.field public realPoint:Landroid/util/SizeF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mInflationStates:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->cacheURI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->realPoint:Landroid/util/SizeF;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->postCaptureListener:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mInflationStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final dismissWindow()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/16 v5, 0x9

    invoke-direct {v4, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final getRealLocation()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget v4, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isFoldDualPaneScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x5a

    if-eq v1, v5, :cond_1

    const/16 v5, 0x10e

    if-ne v1, v5, :cond_2

    :cond_1
    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isFoldDualPaneScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    :goto_1
    new-instance v2, Landroid/util/SizeF;

    int-to-float v0, v0

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    mul-float/2addr v1, v4

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->realPoint:Landroid/util/SizeF;

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 7

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0a02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a02a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a03a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinner:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0410

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinnerBackground:Landroid/view/View;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->registerPostCaptureListener(Z)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->getRealLocation()V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    new-instance p0, Landroid/content/Intent;

    sget v0, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    const-string v0, "com.motorola.camera5.DOC_EDITOR_ACTION_RECEIVER"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXTRA_DOCUMENT_ORIGINAL_URI"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    return-void
.end method

.method public final pause()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinnerBackground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final registerPostCaptureListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->findGlComponent()Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->postCaptureListener:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->addPostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->removePostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mInflationStates:Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->registerPostCaptureListener(Z)V

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->registerPostCaptureListener(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mInflationStates:Ljava/util/ArrayList;

    return-object p0
.end method
