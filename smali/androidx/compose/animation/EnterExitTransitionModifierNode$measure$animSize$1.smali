.class public final Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $target:J

.field public final synthetic this$0:Landroidx/compose/animation/EnterExitTransitionModifierNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;JI)V
    .locals 0

    iput p4, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->this$0:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    iput-wide p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->$target:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/animation/EnterExitState;

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->this$0:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    iget-object v1, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->enter:Landroidx/compose/animation/EnterTransitionImpl;

    iget-object v1, v1, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v1, v1, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    iget-wide v2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->$target:J

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    iget-object p0, v1, Landroidx/compose/animation/Slide;->slideOffset:Lkotlin/jvm/internal/Lambda;

    new-instance v1, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v6, p0, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    iget-object p0, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/Slide;->slideOffset:Lkotlin/jvm/internal/Lambda;

    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v0, p0, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    goto :goto_1

    :cond_1
    move-wide v0, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    move-wide v4, v0

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    move-wide v4, v6

    :cond_4
    :goto_2
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p0, v4, v5}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->this$0:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->getAlignment()Landroidx/compose/ui/BiasAlignment;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {p0}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->getAlignment()Landroidx/compose/ui/BiasAlignment;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_9
    :goto_3
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->this$0:Landroidx/compose/animation/EnterExitTransitionModifierNode;

    iget-object p1, p1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p1, p1, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    goto :goto_4

    :cond_a
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_b
    :goto_4
    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;->$target:J

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
