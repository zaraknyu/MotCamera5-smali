.class public final Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/ui/node/NodeCoordinator;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/node/NodeCoordinator;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->this$0:Landroidx/compose/ui/node/NodeCoordinator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->this$0:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockCanvas:Landroidx/compose/ui/graphics/Canvas;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockParentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->this$0:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
