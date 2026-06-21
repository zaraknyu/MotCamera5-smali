.class public final synthetic Le/V0$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/layout/BoxScope;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Le/X;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/BoxScope;ZIILe/X;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/V0$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/foundation/layout/BoxScope;

    iput-boolean p2, p0, Le/V0$$ExternalSyntheticLambda5;->f$1:Z

    iput p3, p0, Le/V0$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Le/V0$$ExternalSyntheticLambda5;->f$3:I

    iput-object p5, p0, Le/V0$$ExternalSyntheticLambda5;->f$4:Le/X;

    iput p6, p0, Le/V0$$ExternalSyntheticLambda5;->f$5:I

    iput p7, p0, Le/V0$$ExternalSyntheticLambda5;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/V0$$ExternalSyntheticLambda5;->f$5:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Le/V0$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/foundation/layout/BoxScope;

    iget-boolean v1, p0, Le/V0$$ExternalSyntheticLambda5;->f$1:Z

    iget v2, p0, Le/V0$$ExternalSyntheticLambda5;->f$2:I

    iget v3, p0, Le/V0$$ExternalSyntheticLambda5;->f$3:I

    iget-object v4, p0, Le/V0$$ExternalSyntheticLambda5;->f$4:Le/X;

    iget v7, p0, Le/V0$$ExternalSyntheticLambda5;->f$6:I

    invoke-static/range {v0 .. v7}, Le/W;->a(Landroidx/compose/foundation/layout/BoxScope;ZIILe/X;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
