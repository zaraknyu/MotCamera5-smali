.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;


# instance fields
.field public final synthetic $direction:I

.field public final synthetic $interval:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$interval:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$direction:I

    return-void
.end method


# virtual methods
.method public final getHasMoreContent()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$interval:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->$direction:I

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$layout$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;I)Z

    move-result p0

    return p0
.end method
