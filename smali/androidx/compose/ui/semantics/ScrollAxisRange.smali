.class public final Landroidx/compose/ui/semantics/ScrollAxisRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final maxValue:Lkotlin/jvm/internal/Lambda;

.field public final value:Lkotlin/jvm/internal/Lambda;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    return-void
.end method


# virtual methods
.method public final getMaxValue()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScrollAxisRange(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->value:Lkotlin/jvm/internal/Lambda;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/semantics/ScrollAxisRange;->maxValue:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", reverseScrolling=false)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
