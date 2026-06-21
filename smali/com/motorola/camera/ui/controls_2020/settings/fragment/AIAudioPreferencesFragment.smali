.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/AIAudioPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/AIAudioPreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;",
        "<init>",
        "()V",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f150002

    const v1, 0x7f120277

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_ZOOM:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_NOISE_CANCELLATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    filled-new-array {p1, p2}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    iget v0, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    const-string v2, "getCurrentCameraType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    iget-boolean v2, v2, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result p2

    goto/16 :goto_2

    :cond_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    :goto_1
    move p2, v3

    goto/16 :goto_2

    :cond_4
    move p2, v2

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result p2

    goto/16 :goto_2

    :cond_6
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result p2

    goto/16 :goto_2

    :cond_7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result p2

    goto/16 :goto_2

    :cond_8
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FPS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsSupport(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_9
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result p2

    goto/16 :goto_2

    :cond_a
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result p2

    goto/16 :goto_2

    :cond_b
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p2, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {p2}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result p2

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object p2, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    invoke-virtual {p2}, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable()Z

    move-result p2

    goto :goto_2

    :cond_d
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUwSATFallbackSupported()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedLaunchType()Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_1

    :cond_e
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_1

    :cond_f
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p2

    goto :goto_2

    :cond_10
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_1

    :goto_2
    if-eqz p2, :cond_11

    move v2, v3

    :cond_11
    if-nez v2, :cond_0

    iget-object p2, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object p2, p2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast p2, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_12
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_ZOOM:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUDIO_NOISE_CANCELLATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    filled-new-array {p1, p2}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    iget v0, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->title:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_13
    move-object v1, v2

    :goto_4
    iget-object v3, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_14
    iget-object v3, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object p2, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;->configSwitchPreferenceCompat(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    goto :goto_3

    :cond_15
    return-void
.end method
