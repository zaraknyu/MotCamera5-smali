.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;",
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


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isTenBitVideoMode:Z

.field public resetDialog:Landroidx/appcompat/app/AlertDialog;

.field public final resetDialogClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

.field public scrollToStorage:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f15000a

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;-><init>(I)V

    new-instance v0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->scrollToStorage:Ljava/lang/Boolean;

    return-void
.end method

.method public static resetToDefaultValue(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static setDefaultSize(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/PreviewSize$AspectRatio;)V
    .locals 10

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    instance-of v2, v1, Landroid/util/Size;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<android.util.Size>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupported()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v8, v9, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v8

    invoke-static {v7}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v7

    if-lt v8, v7, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v8, v7, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v7

    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object p1, v5

    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result p1

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/util/Size;

    invoke-static {v3}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v3

    if-ge p1, v3, :cond_8

    move-object v5, v1

    move p1, v3

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_4

    :cond_9
    instance-of v1, v1, Lcom/motorola/camera/VideoFormat;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {v1}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type kotlin.collections.List<com.motorola.camera.VideoFormat>"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/VideoFormat;

    iget-object v8, v8, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v8}, Lcom/motorola/camera/utility/ColorUtil;->getArea(Landroid/util/Size;)I

    move-result v9

    if-gt v9, v1, :cond_b

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v9, v8, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    if-eqz v8, :cond_b

    move v8, v3

    goto :goto_3

    :cond_b
    move v8, v4

    :goto_3
    if-eqz v8, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    move-object v1, v5

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    iget-object v3, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_10

    move-object v5, v2

    move-object v1, v3

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_11
    :goto_4
    if-nez v5, :cond_12

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :cond_12
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->clearCachedValue()V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->showResetDialog(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Skipping preference load"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v1, 0x7f1204a2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v2, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v2, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    const v6, 0x7f120482

    const-string v7, "getCurrentCameraType(...)"

    if-ge v4, v2, :cond_42

    aget-object v8, v1, v4

    iget v8, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;->key:I

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Landroidx/preference/PreferenceCategory;

    if-eqz v8, :cond_41

    sget-object v9, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->INSTANT_REVIEW:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHOT_OPTIMIZATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->HDR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v13, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_MACRO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v14, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v15, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->VIDEO_AUTO_FPS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v16, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_FOCUS_TRACING:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v17, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->EFFICIENT_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v18, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->FRONT_MIRROR:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v19, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->SHUTTER_SOUND:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v20, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->KEEP_LAST_MODE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object v21, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->LOCATION:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    filled-new-array/range {v10 .. v21}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    iget v11, v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v11, :cond_3

    iget-object v12, v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v12, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v13, v10, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    iget-boolean v14, v14, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz v12, :cond_14

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v12

    goto/16 :goto_4

    :cond_5
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    :goto_3
    move v12, v5

    goto/16 :goto_4

    :cond_7
    move v12, v3

    goto/16 :goto_4

    :cond_8
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result v12

    goto/16 :goto_4

    :cond_9
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v12

    goto/16 :goto_4

    :cond_a
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result v12

    goto/16 :goto_4

    :cond_b
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FPS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsSupport(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    if-nez v12, :cond_6

    sget-boolean v12, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_c
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v12

    goto/16 :goto_4

    :cond_d
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v12

    goto/16 :goto_4

    :cond_e
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    sget-object v12, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {v12}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v12

    goto :goto_4

    :cond_f
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-object v12, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    invoke-virtual {v12}, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable()Z

    move-result v12

    goto :goto_4

    :cond_10
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUwSATFallbackSupported()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedLaunchType()Z

    move-result v12

    if-eqz v12, :cond_7

    goto/16 :goto_3

    :cond_11
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v12

    if-nez v12, :cond_7

    goto/16 :goto_3

    :cond_12
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v12

    goto :goto_4

    :cond_13
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v12

    if-nez v12, :cond_7

    goto/16 :goto_3

    :goto_4
    if-eqz v12, :cond_14

    move v12, v5

    goto :goto_5

    :cond_14
    move v12, v3

    :goto_5
    if-nez v12, :cond_3

    sget-object v12, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->GOOGLE_LENS:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    if-ne v10, v12, :cond_15

    sget-object v10, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    new-instance v12, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v12, v0, v11, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/PreferenceCategory;)V

    invoke-virtual {v10, v12}, Lcom/motorola/camera/utility/lens/LensApiHelper;->checkGoogleLensAvailability(Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;)V

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v0, v11, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    goto/16 :goto_2

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v9

    if-nez v9, :cond_17

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v9, v9, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v9, :cond_18

    :cond_17
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_18
    sget-boolean v6, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_BRAND:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v6}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "lenovo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_6

    :cond_19
    move v6, v3

    goto :goto_7

    :cond_1a
    :goto_6
    move v6, v5

    :goto_7
    if-eqz v6, :cond_1b

    invoke-static {}, Lcom/motorola/camera/Util;->isSampleApk()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_1b
    const v6, 0x7f1204b8

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_1c
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDvSupported(Z)Z

    move-result v6

    if-nez v6, :cond_1d

    const v6, 0x7f1204d7

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_1d
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v6

    if-nez v6, :cond_1e

    const v6, 0x7f12047d

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_1e
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v6}, Lcom/motorola/camera/QuickLaunch;->isGestureAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v6}, Lcom/motorola/camera/QuickLaunch;->isDoubleTapPwrAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_20

    :cond_1f
    const-string/jumbo v6, "ro.product.tkdn"

    sget-object v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->PRODUCT_TKDN:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    iget-boolean v9, v9, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    invoke-static {v6, v9}, Lcom/motorola/camera/shared/SystemSetting;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_21

    :cond_20
    const v6, 0x7f1204b1

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_21
    sget-object v6, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->BUILD_CHARACTERISTICS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v6}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_22

    const-string v9, "nosdcard"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    :cond_22
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v6

    if-eqz v6, :cond_24

    :cond_23
    const v6, 0x7f1204c1

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v6

    if-eqz v6, :cond_25

    const v6, 0x7f120498

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_25
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v6

    array-length v9, v6

    move v10, v3

    :goto_8
    if-ge v10, v9, :cond_37

    aget-object v11, v6, v10

    iget v12, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    iget-boolean v14, v14, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz v13, :cond_35

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v11

    goto/16 :goto_a

    :cond_26
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v11

    if-nez v11, :cond_28

    :cond_27
    :goto_9
    move v11, v5

    goto/16 :goto_a

    :cond_28
    move v11, v3

    goto/16 :goto_a

    :cond_29
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result v11

    goto/16 :goto_a

    :cond_2a
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v11

    goto/16 :goto_a

    :cond_2b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result v11

    goto/16 :goto_a

    :cond_2c
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FPS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsSupport(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v11

    if-nez v11, :cond_27

    sget-boolean v11, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-eqz v11, :cond_28

    goto :goto_9

    :cond_2d
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v11

    goto/16 :goto_a

    :cond_2e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v11

    goto/16 :goto_a

    :cond_2f
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    sget-object v11, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {v11}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v11

    goto :goto_a

    :cond_30
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    sget-object v11, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    invoke-virtual {v11}, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable()Z

    move-result v11

    goto :goto_a

    :cond_31
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUwSATFallbackSupported()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedLaunchType()Z

    move-result v11

    if-eqz v11, :cond_28

    goto/16 :goto_9

    :cond_32
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v11

    if-nez v11, :cond_28

    goto/16 :goto_9

    :cond_33
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    goto :goto_a

    :cond_34
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v11

    if-nez v11, :cond_28

    goto/16 :goto_9

    :goto_a
    if-eqz v11, :cond_35

    move v11, v5

    goto :goto_b

    :cond_35
    move v11, v3

    :goto_b
    if-nez v11, :cond_36

    invoke-virtual {v0, v12, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_36
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    :cond_37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLimitedRearSingleBokehMode()Z

    move-result v6

    if-eqz v6, :cond_38

    move v6, v5

    goto :goto_c

    :cond_38
    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    xor-int/2addr v6, v5

    :goto_c
    if-eqz v6, :cond_39

    const v6, 0x7f1204b4

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_39
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v6, v9}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x4

    if-gt v6, v7, :cond_3a

    move v6, v5

    goto :goto_d

    :cond_3a
    move v6, v3

    :goto_d
    if-eqz v6, :cond_3b

    const v6, 0x7f1204b2

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_3b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v6

    if-nez v6, :cond_3c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result v6

    if-nez v6, :cond_3c

    const v6, 0x7f1204cf

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_3c
    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->HIDE_SHOT_OPTIMIZATION:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v6, v6, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumSet;

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const v6, 0x7f120492

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_3d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v6

    if-nez v6, :cond_3e

    const v6, 0x7f1204a6

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_3e
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO_SUPPORT_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v5, :cond_3f

    move v6, v5

    goto :goto_e

    :cond_3f
    move v6, v3

    :goto_e
    if-eqz v6, :cond_40

    const v6, 0x7f120495

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_40
    iget-object v6, v8, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v5, :cond_41

    iget-object v5, v0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v5, v5, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v5, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_42
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_43

    new-instance v2, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_43
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/launch/OnLaunchAction;

    sget-object v2, Lcom/motorola/camera/launch/OnLaunchAction;->OPEN_LOCATION_SETTINGS:Lcom/motorola/camera/launch/OnLaunchAction;

    if-ne v1, v2, :cond_44

    const v1, 0x7f1204bf

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    if-eqz v1, :cond_44

    iput-boolean v5, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->shouldAnimate:Z

    :cond_44
    const v1, 0x7f1204a7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_45

    new-instance v2, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    const/16 v4, 0x1d

    invoke-direct {v2, v4, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    :cond_45
    const v1, 0x7f1204d2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_47

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

    if-eqz v2, :cond_46

    const v2, 0x7f120282

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_46
    const v2, 0x7f120283

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_f
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_47
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_10
    const/4 v6, 0x0

    if-ge v4, v2, :cond_48

    aget-object v8, v1, v4

    iget v9, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    invoke-virtual {v0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Landroidx/preference/ListPreference;

    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;->configIntListComponent(Landroidx/preference/ListPreference;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_48
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_63

    aget-object v8, v1, v4

    iget v9, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    invoke-virtual {v0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    iget-object v10, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/settings/CameraType;

    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v9, :cond_62

    if-nez v10, :cond_49

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_49
    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type com.motorola.camera.settings.Setting<kotlin.Any>"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiValuesAllowed(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    iget-boolean v12, v12, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v12, :cond_4a

    if-eqz v13, :cond_4a

    move v12, v5

    goto :goto_12

    :cond_4a
    move v12, v3

    :goto_12
    if-eqz v13, :cond_5a

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoSmileCaptureSupported()Z

    move-result v8

    goto/16 :goto_14

    :cond_4b
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoGestureCaptureSupported()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v8

    if-nez v8, :cond_4d

    :cond_4c
    :goto_13
    move v8, v5

    goto/16 :goto_14

    :cond_4d
    move v8, v3

    goto/16 :goto_14

    :cond_4e
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result v8

    goto/16 :goto_14

    :cond_4f
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_50

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioZoomSupported()Z

    move-result v8

    goto/16 :goto_14

    :cond_50
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_NOISE_CANCELLATION_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_51

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartNoiseCancellationSupported()Z

    move-result v8

    goto/16 :goto_14

    :cond_51
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FPS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoAutoFpsSupport(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v8

    if-nez v8, :cond_4c

    sget-boolean v8, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    if-eqz v8, :cond_4d

    goto :goto_13

    :cond_52
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_53

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v8

    goto/16 :goto_14

    :cond_53
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_54

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v8

    goto/16 :goto_14

    :cond_54
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->GOOGLE_LENS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_55

    sget-object v8, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {v8}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v8

    goto :goto_14

    :cond_55
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AI_LENS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56

    sget-object v8, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->INSTANCE:Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;

    invoke-virtual {v8}, Lcom/motorola/camera/utility/ailens/AiLensAccessorHelper;->isAiLensAvailable()Z

    move-result v8

    goto :goto_14

    :cond_56
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_57

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUwSATFallbackSupported()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedLaunchType()Z

    move-result v8

    if-eqz v8, :cond_4d

    goto/16 :goto_13

    :cond_57
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v8

    if-nez v8, :cond_4d

    goto/16 :goto_13

    :cond_58
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_59

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v8

    goto :goto_14

    :cond_59
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewOff()Z

    move-result v8

    if-nez v8, :cond_4d

    goto/16 :goto_13

    :cond_5a
    :goto_14
    invoke-static {v11, v10}, Lcom/motorola/camera/settings/SettingsHelper;->getPersistPictureSize(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    sget v13, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->$r8$clinit:I

    invoke-static {v8}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v8

    const-string v13, "getSupportedAspectRatio(...)"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkq;->getResolutions(Lcom/motorola/camera/PreviewSize$AspectRatio;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_15
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-boolean v15, v14, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isRecommended:Z

    iget-object v14, v14, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    if-eqz v15, :cond_5b

    sget-object v15, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f1204b6

    invoke-virtual {v15, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v15, "getString(...)"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :cond_5b
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_15

    :cond_5c
    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    iput-object v6, v9, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-object v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_5d
    new-array v10, v3, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    iput-object v6, v9, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_5e

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    goto :goto_18

    :cond_5e
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    iget-boolean v11, v11, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->isSelected:Z

    if-eqz v11, :cond_5f

    goto :goto_17

    :cond_60
    const/4 v10, 0x0

    :goto_17
    move-object v6, v10

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;

    :goto_18
    iput-object v8, v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->resolutionList:Ljava/util/ArrayList;

    if-eqz v12, :cond_61

    iget-object v8, v9, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v8, v8

    if-le v8, v5, :cond_61

    move v8, v5

    goto :goto_19

    :cond_61
    move v8, v3

    :goto_19
    iput-boolean v8, v9, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/DisableAppearanceListPreference;->enableAppearance:Z

    if-eqz v6, :cond_62

    iget-object v8, v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->sizeValue:Landroid/util/Size;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference$Resolution;->string:Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_62
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_63
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object v1

    array-length v2, v1

    :goto_1a
    if-ge v3, v2, :cond_66

    aget-object v4, v1, v3

    iget v5, v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreferenceCompat;

    iget-object v6, v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->title:Ljava/lang/Integer;

    if-eqz v6, :cond_64

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1b

    :cond_64
    const/4 v6, 0x0

    :goto_1b
    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    if-eqz v7, :cond_65

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1c

    :cond_65
    const/4 v7, 0x0

    :goto_1c
    iget-object v8, v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v6, v7, v8, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;->configSwitchPreferenceCompat(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_66
    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v2, 0x7f120150

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f1204c1

    const v3, 0x7f1204aa

    if-eqz v0, :cond_2

    const-string v4, "LAUNCH_STORAGE"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->performClick()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->scrollToStorage:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->scrollToStorage:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_5

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$8;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_4

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Lcom/motorola/camera/mcf/Mcf$8;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$8;->run()V

    :cond_5
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->scrollToStorage:Ljava/lang/Boolean;

    :cond_6
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTenBitVideoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->isTenBitVideoMode:Z

    return-void
.end method

.method public final removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public final showResetDialog(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f13020f

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120484

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f120483

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v1, 0x7f1200d1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialogClickListener:Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;)V

    const v1, 0x7f120485

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda2;)V

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f08034c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->resetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
