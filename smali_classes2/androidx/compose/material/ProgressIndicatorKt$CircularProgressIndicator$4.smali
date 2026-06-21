.class public final Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $backgroundColor:J

.field public final synthetic $color:J

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $strokeCap:I

.field public final synthetic $strokeWidth:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;JFJII)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$color:J

    iput p4, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$strokeWidth:F

    iput-wide p5, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$backgroundColor:J

    iput p7, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$strokeCap:I

    iput p8, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v8

    iget-object v0, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$color:J

    iget v3, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$strokeWidth:F

    iget-wide v4, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$backgroundColor:J

    iget v6, p0, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;->$strokeCap:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
