.class public final synthetic Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;

    iput-wide p2, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda5;->f$1:J

    iput p4, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p2, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda5;->f$2:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;

    iget-wide v1, p0, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent$$ExternalSyntheticLambda5;->f$1:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/motorola/camera/ui/controls_fold/debug/DebugComposeComponent;->AddNavBar-ek8zF_U(JLandroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
