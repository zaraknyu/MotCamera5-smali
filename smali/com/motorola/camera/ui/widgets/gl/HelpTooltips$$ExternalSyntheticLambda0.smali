.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    instance-of v0, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
