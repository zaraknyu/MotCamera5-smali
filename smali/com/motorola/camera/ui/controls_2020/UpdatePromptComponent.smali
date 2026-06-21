.class public final Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Ljava/util/ArrayList;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Landroid/util/ArraySet;

.field public static final SHOW_STATES:Ljava/util/ArrayList;


# instance fields
.field public acceptButton:Landroid/widget/Button;

.field public final activityContext:Landroid/app/Activity;

.field public bannerDismissed:Z

.field public bannerGroup:Landroidx/constraintlayout/widget/Group;

.field public bannerHidden:Z

.field public final inAppUpdateUtils$delegate:Ljava/lang/Object;

.field public final packageName:Ljava/lang/String;

.field public refuseButton:Landroid/widget/Button;

.field public snackbarButton:Landroid/widget/Button;

.field public snackbarGroup:Landroidx/constraintlayout/widget/Group;

.field public snackbarIcon:Landroid/widget/ImageView;

.field public final snackbarProgress$delegate:Ljava/lang/Object;

.field public snackbarText:Landroid/widget/TextView;

.field public updateAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->HIDE_STATES:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->SHOW_STATES:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/ui/UIManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarProgress$delegate:Ljava/lang/Object;

    iget-object p2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->activityContext:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->packageName:Ljava/lang/String;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils$delegate:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cancelUpdate()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->createGooglePlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->activityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "getPackageManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ColorUtil;->resolveActivityCompat$default(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    return-object p0
.end method

.method public final getSnackbarProgress()Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarProgress$delegate:Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->LISTENED_STATES:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final refreshUIAnimation$1()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_e

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz v1, :cond_0

    rsub-int v2, v2, 0x168

    :cond_0
    const/16 v3, 0x10e

    const/16 v4, 0x5a

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    if-eq v2, v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p0

    const/4 v2, 0x0

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    sub-float/2addr v2, p0

    cmpg-float v3, v2, v7

    if-gez v3, :cond_1

    add-float/2addr v2, v6

    :cond_1
    cmpl-float v3, v2, v5

    if-lez v3, :cond_2

    sub-float/2addr v2, v6

    :cond_2
    add-float/2addr p0, v2

    move v5, v4

    move v2, v7

    move v3, v2

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v2

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    sub-float/2addr p0, v2

    cmpg-float v3, p0, v7

    if-gez v3, :cond_4

    add-float/2addr p0, v6

    :cond_4
    cmpl-float v3, p0, v5

    if-lez v3, :cond_5

    sub-float/2addr p0, v6

    :cond_5
    add-float/2addr p0, v2

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    :goto_1
    move v5, v4

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move v3, v4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p0

    rsub-int v2, v3, 0x168

    int-to-float v2, v2

    sub-float/2addr v2, p0

    cmpg-float v3, v2, v7

    if-gez v3, :cond_9

    add-float/2addr v2, v6

    :cond_9
    cmpl-float v3, v2, v5

    if-lez v3, :cond_a

    sub-float/2addr v2, v6

    :cond_a
    add-float/2addr p0, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    neg-float v2, v2

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_1

    :goto_4
    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v7, v1

    :cond_c
    invoke-virtual {v0, v7}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_e
    return-void
.end method

.method public final rotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/google/zxing/Result;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iput-boolean v2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/zzg;->getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils;I)V

    new-instance p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->HIDE_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->SHOW_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    return-void

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isExiting(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->completeUpdate()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
