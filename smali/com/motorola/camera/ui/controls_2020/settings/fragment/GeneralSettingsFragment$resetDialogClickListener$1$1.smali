.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/IgnoreResetListModel;->settingString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/PersistBehavior;->getKeyNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.motorola.camera5.mode"

    invoke-static {v3, v5, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.motorola.camera.first"

    invoke-static {v3, v5, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QUICK_CAPTURE_CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.settings.SettingsManager.Key<kotlin.Any>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetDualCaptureCameraType()V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object p1

    array-length v3, p1

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_d

    aget-object v5, p1, v4

    iget-object v6, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type com.motorola.camera.settings.Setting<kotlin.Any>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    const-string v8, "getCurrentCameraType(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    sget v8, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->$r8$clinit:I

    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v8, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkq;->getResolutions(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-boolean v9, v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    if-eqz v9, :cond_9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_c

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    invoke-virtual {v5, v6}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v5, v6}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PHOTOS_APP_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;

    move-result-object p1

    array-length v3, p1

    move v4, v1

    :goto_6
    if-ge v4, v3, :cond_e

    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/model/VideoFormatListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v5, v6}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    const/4 p1, 0x1

    invoke-static {v1, p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->setInitialVideoSize(ZZZ)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->shouldFaceBeautyDefaultAuto()Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    :goto_7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
