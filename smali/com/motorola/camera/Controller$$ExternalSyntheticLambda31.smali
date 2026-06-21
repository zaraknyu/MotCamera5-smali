.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Controller;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->f$0:Lcom/motorola/camera/Controller;

    iput-boolean p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-boolean p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->f$1:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->f$0:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_0
    return-void

    :pswitch_0
    iget-boolean p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->f$1:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda31;->f$0:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
