.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;",
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


# instance fields
.field public selectSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

.field public selectThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference;

.field public shuffleSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

.field public shuffleThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f150006

    const v1, 0x7f120291

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f12049f

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->shuffleSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    const p1, 0x7f12049c

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->selectSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    const p1, 0x7f1204a0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->shuffleThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;

    const p1, 0x7f12049d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->selectThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->shuffleSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;I)V

    iput-object p2, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->selectSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;I)V

    iput-object v0, p2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CARTOON_SHUFFLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string p2, "getValue(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public final toggleLayouts(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->shuffleThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->selectThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->shuffleThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonShufflePreference;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->selectThumbnailsPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/CartoonSelectPreference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method
