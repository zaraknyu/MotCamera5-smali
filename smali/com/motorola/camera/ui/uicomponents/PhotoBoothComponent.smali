.class public final Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;


# instance fields
.field public final cameraData:Ljava/util/ArrayList;

.field public final expectedSeqIds:Ljava/util/ArrayList;

.field public expectedShots:I

.field public final filterTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final handler:Landroid/os/Handler;

.field public isCapturing:Z

.field public isFlashing:Z

.field public volatile isLowLux:Z

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public mIsFilterShow:Z

.field public mIsSinglePane:Z

.field public photoBoothEditButton:Landroid/widget/ImageButton;

.field public photoBoothGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final photoBoothSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

.field public photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final photoBoothStripThumbnails:Ljava/util/ArrayList;

.field public final saveCollageCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

.field public savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public savingLayoutContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final thumbnailSeqIds:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->thumbnailSeqIds:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->handler:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStripThumbnails:Ljava/util/ArrayList;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->createControlVisibilityByNotifier$1(Lcom/motorola/camera/Notifier$TYPE;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->filterTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/16 p2, 0xb

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->saveCollageCallback:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    return-void
.end method

.method public static getCollageEditorIntent(Ljava/util/List;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/CameraData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.photos.api.ACTION_CREATE_COLLAGE"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.photos"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.apps.photos.api.media_store_ids"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/ArrayList;)[J

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public final changePhotoBoothMargin(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const v2, 0x7f0704a1

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    const p1, 0x7f0704a2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    const v2, 0x7f0704a8

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    const p1, 0x7f0704a9

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayoutContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a03a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->savingLayoutContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothGuideline:Landroidx/constraintlayout/widget/Guideline;

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothEditButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStripThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0a0352

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothEditButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onFoldScreenPaneChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->updatePhotoBoothStrip(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->updateThumbnail(Z)V

    return-void
.end method

.method public final onFoldSplitChanged()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mExtraJson:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/PostViewJsonData;->isPostViewFrameSelectorEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/PostViewJsonData;->isPostViewFrameFinalData()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/utility/PostViewJsonData;->isPostViewFrameFirstData()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isCapturing:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->thumbnailSeqIds:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStripThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->getThumbnailsAndBuffer(Landroid/content/Context;)Lkotlin/Triple;

    move-result-object p1

    iget-object p1, p1, Lkotlin/Triple;->first:Ljava/lang/Object;

    const-string p2, "<get-first>(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_3

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr p2, v3

    invoke-direct {v2, p2, v1, v0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;-><init>(IIII)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr v0, v3

    invoke-direct {v2, v1, v0, p2, p2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;-><init>(IIII)V

    :goto_1
    iget p2, v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->width:I

    iget v0, v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->height:I

    iget v1, v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->x:I

    iget v2, v2, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$BitmapCoordinates;->y:I

    invoke-static {p1, v1, v2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v0, 0x16

    invoke-direct {p2, v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->setStripPosition()V

    :cond_0
    return-void
.end method

.method public final resetPhotoStrip()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080331

    goto :goto_0

    :cond_0
    const v0, 0x7f080330

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStripThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/utils/widget/ImageFilterView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothEditButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final setStripPosition()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v1

    const-string v2, "getLayoutManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    const v1, 0x7f0704a4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v2

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v2, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v2, v0

    if-gez v1, :cond_2

    move v2, v0

    :cond_2
    float-to-int v0, v2

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_3
    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isCapturing:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->thumbnailSeqIds:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->stopListening$1()V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->filterTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->stopListening$1()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->filterTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isCapturing:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->thumbnailSeqIds:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsFilterShow:Z

    if-eqz p1, :cond_f

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isLowLux:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsFilterShow:Z

    if-eqz p1, :cond_f

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_f

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isCapturing:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isCapturing:Z

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedShots:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->findGlComponent()Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.PostCapture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->addPostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    return-void

    :cond_8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->isCapturing:Z

    if-eqz v2, :cond_9

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SEQ_ID"

    const-class v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->stopListening$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->thumbnailSeqIds:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_0

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_SAVING_COLLAGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :cond_e
    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->filterTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_FILTER_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_f
    :goto_1
    return-void

    :cond_10
    :goto_2
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopListening$1()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->findGlComponent()Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.PostCapture"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->removePostCaptureListener(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;)V

    return-void
.end method

.method public final updatePhotoBoothStrip(Z)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStrip:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v3, 0x7f0704aa

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v3, 0x7f0704a3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v2

    const v4, 0x7f0704a5

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsFilterShow:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v5, 0x7f0704a1

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    :goto_2
    float-to-int v2, v2

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v5, 0x7f0704a8

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v5, 0x7f0704a6

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsFilterShow:Z

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v4, 0x7f0704a2

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    :goto_4
    float-to-int v2, v2

    goto :goto_5

    :cond_5
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v4, 0x7f0704a9

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    const v4, 0x7f07049f

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v2

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_5
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f080332

    goto :goto_6

    :cond_8
    if-eqz p1, :cond_9

    const v1, 0x7f080331

    goto :goto_6

    :cond_9
    const v1, 0x7f080330

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsSinglePane:Z

    if-eq v1, p1, :cond_a

    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->mIsSinglePane:Z

    xor-int/lit8 p0, p1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_a
    return-void
.end method

.method public final updateThumbnail(Z)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->photoBoothStripThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const v3, 0x7f0704b0

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz p1, :cond_1

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    const v5, 0x7f0704b1

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_1
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    const v5, 0x7f0704af

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCurrentDimen(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0704ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f08032f

    goto :goto_3

    :cond_2
    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f08032e

    goto :goto_3

    :cond_3
    const v2, 0x106000d

    :goto_3
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final updateViewStub()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->setStripPosition()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->updatePhotoBoothStrip(Z)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->updateThumbnail(Z)V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
