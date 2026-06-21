.class public final synthetic Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const/high16 p1, 0x10000000

    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    const/high16 p1, 0x10000000

    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    const/high16 p1, 0x10000000

    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    const/high16 p1, 0x10000000

    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
