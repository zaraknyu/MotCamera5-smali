.class public final synthetic Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/Camera;

    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/Camera;->onCtaDialogPositiveButtonClick(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CtaPermissionHelper$Listener;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/motorola/camera/CtaPermissionHelper$Listener;->onCtaDialogNegativeButtonClick(I)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iget-object p0, p0, Lcom/motorola/camera/CtaPermissionHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CtaPermissionHelper$Listener;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0, p2}, Lcom/motorola/camera/CtaPermissionHelper$Listener;->onCtaDialogPositiveButtonClick(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
