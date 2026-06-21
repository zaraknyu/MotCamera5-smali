.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    const v1, 0x7f12015b

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    const v3, 0x7f12013e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v2, 0x7f12013c

    iget-object v3, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    const p0, 0x7f120150

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f12013d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v4, 0x7f12013b

    iget-object v5, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    const p0, 0x7f120147

    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_1
    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_2
    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    const v0, 0x7f0a047f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->hideToastRunnable:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    new-instance v1, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_3
    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_4
    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v3, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f120364

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v4, 0x7f120363

    iget-object v5, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    const p0, 0x7f120362

    invoke-virtual {v0, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda6;

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
