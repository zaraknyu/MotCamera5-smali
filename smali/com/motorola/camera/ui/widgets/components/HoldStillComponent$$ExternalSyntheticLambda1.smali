.class public final synthetic Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->enableHoldStill(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
