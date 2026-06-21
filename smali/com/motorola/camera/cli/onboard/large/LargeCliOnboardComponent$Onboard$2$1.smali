.class public final Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$Onboard$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$Onboard$2$1;->this$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/pager/PagerScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    const-string v0, "$this$HorizontalPager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    shr-int/lit8 p1, p4, 0x3

    and-int/lit8 p1, p1, 0xe

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$Onboard$2$1;->this$0:Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;

    invoke-virtual {p0, p2, p3, p1}, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent;->OnboardItem(ILandroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
