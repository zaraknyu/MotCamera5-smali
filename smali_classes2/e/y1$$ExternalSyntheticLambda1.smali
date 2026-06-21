.class public final synthetic Le/y1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Le/n0;

.field public final synthetic f$1:I

.field public final synthetic f$2:Le/o1;

.field public final synthetic f$3:Le/n1;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Le/n0;ILe/o1;Le/n1;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/y1$$ExternalSyntheticLambda1;->f$0:Le/n0;

    iput p2, p0, Le/y1$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Le/y1$$ExternalSyntheticLambda1;->f$2:Le/o1;

    iput-object p4, p0, Le/y1$$ExternalSyntheticLambda1;->f$3:Le/n1;

    iput-object p5, p0, Le/y1$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function3;

    iput p6, p0, Le/y1$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/y1$$ExternalSyntheticLambda1;->f$5:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Le/y1$$ExternalSyntheticLambda1;->f$0:Le/n0;

    iget v1, p0, Le/y1$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Le/y1$$ExternalSyntheticLambda1;->f$2:Le/o1;

    iget-object v3, p0, Le/y1$$ExternalSyntheticLambda1;->f$3:Le/n1;

    iget-object v4, p0, Le/y1$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v0 .. v6}, Le/W;->a(Le/n0;ILe/o1;Le/n1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
