.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->mShouldKeepHidden:Z

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->updateGridVisibility(Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->updateGridVisibility(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->mShouldKeepHidden:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
