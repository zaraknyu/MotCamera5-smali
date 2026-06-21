.class public final Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;
.super Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mValueTextView:Landroid/widget/TextView;

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a04d8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->mValueTextView:Landroid/widget/TextView;

    .line 3
    new-instance v0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->this$0:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->this$0:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a04d9

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->mValueTextView:Landroid/widget/TextView;

    .line 8
    new-instance p1, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 p3, 0xe

    invoke-direct {p1, p3, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 9
    :pswitch_0
    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->this$0:Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a04d9

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->mValueTextView:Landroid/widget/TextView;

    .line 12
    new-instance p1, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    const/16 p3, 0xf

    invoke-direct {p1, p3, p0}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final setContent(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->getKeySimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->mValueTextView:Landroid/widget/TextView;

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->getKeySimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->getKeySimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/settings/Setting;->getCheckValue()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
