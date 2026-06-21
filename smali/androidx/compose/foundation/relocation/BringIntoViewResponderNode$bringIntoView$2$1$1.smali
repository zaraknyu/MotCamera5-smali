.class public final synthetic Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

.field public final synthetic $childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

.field public final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;)V
    .locals 6

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    const-string v4, "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "localRect"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->$childCoordinates:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->$boundsProvider:Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;

    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->access$bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/work/impl/utils/CancelWorkRunnable$forId$1;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method
