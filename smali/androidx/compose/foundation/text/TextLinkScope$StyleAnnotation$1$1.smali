.class public final Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/text/TextLinkScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->this$0:Landroidx/compose/foundation/text/TextLinkScope;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->this$0:Landroidx/compose/foundation/text/TextLinkScope;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->this$0:Landroidx/compose/foundation/text/TextLinkScope;

    iget-object v0, p1, Landroidx/compose/foundation/text/TextLinkScope;->annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
