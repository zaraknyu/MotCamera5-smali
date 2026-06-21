.class public final synthetic Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;Ljava/lang/String;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iput-object p2, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$2:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$3:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    iget-object v1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$$ExternalSyntheticLambda11;->f$2:Landroidx/compose/ui/Modifier;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->OnboardText(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
