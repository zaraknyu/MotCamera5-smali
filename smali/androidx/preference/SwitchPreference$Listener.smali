.class public final Landroidx/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/preference/TwoStatePreference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/TwoStatePreference;I)V
    .locals 0

    iput p2, p0, Landroidx/preference/SwitchPreference$Listener;->$r8$classId:I

    iput-object p1, p0, Landroidx/preference/SwitchPreference$Listener;->this$0:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget p1, p0, Landroidx/preference/SwitchPreference$Listener;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/preference/SwitchPreference$Listener;->this$0:Landroidx/preference/TwoStatePreference;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/io/Serializable;)Z

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/preference/SwitchPreference$Listener;->this$0:Landroidx/preference/TwoStatePreference;

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/io/Serializable;)Z

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/preference/SwitchPreference$Listener;->this$0:Landroidx/preference/TwoStatePreference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/io/Serializable;)Z

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
