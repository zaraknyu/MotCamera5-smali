.class public final synthetic Le/V0$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Le/J0;

.field public final synthetic f$1:Le/H0;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$11:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$2:Le/A0;

.field public final synthetic f$3:Lf/C;

.field public final synthetic f$6:Landroidx/compose/runtime/State;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Le/J0;Le/H0;Le/A0;Lf/C;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/V0$$ExternalSyntheticLambda3;->f$0:Le/J0;

    iput-object p2, p0, Le/V0$$ExternalSyntheticLambda3;->f$1:Le/H0;

    iput-object p3, p0, Le/V0$$ExternalSyntheticLambda3;->f$2:Le/A0;

    iput-object p4, p0, Le/V0$$ExternalSyntheticLambda3;->f$3:Lf/C;

    iput-object p5, p0, Le/V0$$ExternalSyntheticLambda3;->f$6:Landroidx/compose/runtime/State;

    iput-object p6, p0, Le/V0$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function3;

    iput-object p7, p0, Le/V0$$ExternalSyntheticLambda3;->f$8:Lkotlin/jvm/functions/Function4;

    iput-object p8, p0, Le/V0$$ExternalSyntheticLambda3;->f$9:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Le/V0$$ExternalSyntheticLambda3;->f$10:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Le/V0$$ExternalSyntheticLambda3;->f$11:Lkotlin/jvm/functions/Function2;

    iput p11, p0, Le/V0$$ExternalSyntheticLambda3;->f$12:I

    iput p12, p0, Le/V0$$ExternalSyntheticLambda3;->f$13:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/V0$$ExternalSyntheticLambda3;->f$12:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v11

    iget p1, p0, Le/V0$$ExternalSyntheticLambda3;->f$13:I

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v12

    iget-object v0, p0, Le/V0$$ExternalSyntheticLambda3;->f$0:Le/J0;

    iget-object v1, p0, Le/V0$$ExternalSyntheticLambda3;->f$1:Le/H0;

    iget-object v2, p0, Le/V0$$ExternalSyntheticLambda3;->f$2:Le/A0;

    iget-object v3, p0, Le/V0$$ExternalSyntheticLambda3;->f$3:Lf/C;

    iget-object v4, p0, Le/V0$$ExternalSyntheticLambda3;->f$6:Landroidx/compose/runtime/State;

    iget-object v5, p0, Le/V0$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function3;

    iget-object v6, p0, Le/V0$$ExternalSyntheticLambda3;->f$8:Lkotlin/jvm/functions/Function4;

    iget-object v7, p0, Le/V0$$ExternalSyntheticLambda3;->f$9:Lkotlin/jvm/functions/Function2;

    iget-object v8, p0, Le/V0$$ExternalSyntheticLambda3;->f$10:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Le/V0$$ExternalSyntheticLambda3;->f$11:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v0 .. v12}, Le/W;->a(Le/J0;Le/H0;Le/A0;Lf/C;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
