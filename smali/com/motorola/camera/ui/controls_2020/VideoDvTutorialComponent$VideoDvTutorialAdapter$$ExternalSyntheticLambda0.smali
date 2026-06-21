.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/QuickCaptureTogglePreference;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a03ec

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f1204dd

    goto :goto_0

    :cond_0
    const v0, 0x7f1204dc

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f1204bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :goto_1
    move-object p0, v1

    goto :goto_2

    :cond_2
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    :goto_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/QuickCaptureRadioGroupPreference;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/QuickCaptureRadioGroupPreference;->radioGroup:Landroid/widget/RadioGroup;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_3
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1204be

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v2, p1, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, v2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v2, Landroidx/preference/PreferenceScreen;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    :goto_4
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/QuickViewDisplayRadioGroupPreference;

    if-eqz v1, :cond_9

    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/QuickViewDisplayRadioGroupPreference;->radioGroup:Landroid/widget/RadioGroup;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/QuickCaptureTogglePreference;->toggleBgView:Landroid/view/View;

    if-eqz p0, :cond_a

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/QuickCaptureTogglePreference;->setToggleBgColor(Landroid/view/View;Z)V

    :cond_a
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;->horizontalRadio:Landroidx/appcompat/widget/AppCompatRadioButton;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;->VERTICAL:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mRatioSelect:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvTutorialHolder;->verticalRadio:Landroidx/appcompat/widget/AppCompatRadioButton;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;->HORIZONTAL:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent;->mRatioSelect:Lcom/motorola/camera/ui/controls_2020/VideoDvTutorialComponent$VideoDvDirection;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
