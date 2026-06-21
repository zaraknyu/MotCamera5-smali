.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->shuffleSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    if-eqz p2, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->toggleLayouts(Z)V

    return-void

    :pswitch_0
    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->selectSwitch:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/BaseSwitchPreference;

    if-eqz p2, :cond_1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/CartoonPreferencesFragment;->toggleLayouts(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
