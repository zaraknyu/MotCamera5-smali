.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;

    invoke-static {v0, p0}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$ND8tNVhAutJ7nFpfD4q-h9V7yD0(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$IlMrCzFrAAjni7xcVFOwAuREgZg(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
