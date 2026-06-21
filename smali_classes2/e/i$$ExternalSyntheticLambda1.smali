.class public final synthetic Le/i$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FFJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    iput p2, p0, Le/i$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Le/i$$ExternalSyntheticLambda1;->f$2:F

    iput-wide p4, p0, Le/i$$ExternalSyntheticLambda1;->f$3:J

    iput-wide p6, p0, Le/i$$ExternalSyntheticLambda1;->f$4:J

    iput p8, p0, Le/i$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/i$$ExternalSyntheticLambda1;->f$5:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v8

    iget-object v0, p0, Le/i$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    iget v1, p0, Le/i$$ExternalSyntheticLambda1;->f$1:F

    iget v2, p0, Le/i$$ExternalSyntheticLambda1;->f$2:F

    iget-wide v3, p0, Le/i$$ExternalSyntheticLambda1;->f$3:J

    iget-wide v5, p0, Le/i$$ExternalSyntheticLambda1;->f$4:J

    invoke-static/range {v0 .. v8}, Le/W;->a(Landroidx/compose/ui/Modifier;FFJJLandroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
