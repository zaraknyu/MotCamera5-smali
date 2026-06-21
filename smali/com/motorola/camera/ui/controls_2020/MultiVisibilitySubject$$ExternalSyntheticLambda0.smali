.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;

    const/4 v3, 0x2

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, p0, v4, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;

    const/4 v3, 0x2

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$$ExternalSyntheticLambda0;->f$1:I

    const/4 v4, 0x1

    invoke-direct {v2, v0, p0, v4, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda35;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
