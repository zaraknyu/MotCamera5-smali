.class public final Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/foundation/text/TextLinkScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->this$0:Landroidx/compose/foundation/text/TextLinkScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->this$0:Landroidx/compose/foundation/text/TextLinkScope;

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->this$0:Landroidx/compose/foundation/text/TextLinkScope;

    if-eqz p0, :cond_1

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$shouldMeasureLinks$1;->this$0:Landroidx/compose/foundation/text/TextLinkScope;

    iget-object v0, p0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
