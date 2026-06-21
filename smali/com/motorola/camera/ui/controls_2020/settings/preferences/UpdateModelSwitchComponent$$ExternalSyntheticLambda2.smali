.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;->onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
