.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/AirGesturePreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/AirGesturePreferencesFragment;",
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

    const v0, 0x7f150003

    const v1, 0x7f120279

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->Companion:Lcom/google/mlkit/common/internal/zzb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AUTO_GESTURE_CAPTURE:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    filled-new-array {p1, p2}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;

    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget v0, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->key:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->title:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    iget-object v3, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->summary:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object p2, p2, Lcom/motorola/camera/ui/controls_2020/settings/model/ToggleListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkp;->configSwitchPreferenceCompat(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    goto :goto_0

    :cond_2
    return-void
.end method
