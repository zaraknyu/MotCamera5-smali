.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

.field public final synthetic f$1:Landroidx/preference/SwitchPreferenceCompat;

.field public final synthetic f$2:Landroidx/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;->f$1:Landroidx/preference/SwitchPreferenceCompat;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/PreferenceCategory;

    return-void
.end method


# virtual methods
.method public final onStatusChecked()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;->f$1:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_0
    return-void
.end method
