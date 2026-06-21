.class public final synthetic Le/L$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Le/t;

.field public final synthetic f$1:F

.field public final synthetic f$2:Le/W0;

.field public final synthetic f$3:F

.field public final synthetic f$5:Le/D;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Le/t;FLe/W0;FLe/D;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/L$$ExternalSyntheticLambda5;->f$0:Le/t;

    iput p2, p0, Le/L$$ExternalSyntheticLambda5;->f$1:F

    iput-object p3, p0, Le/L$$ExternalSyntheticLambda5;->f$2:Le/W0;

    iput p4, p0, Le/L$$ExternalSyntheticLambda5;->f$3:F

    iput-object p5, p0, Le/L$$ExternalSyntheticLambda5;->f$5:Le/D;

    iput p6, p0, Le/L$$ExternalSyntheticLambda5;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/L$$ExternalSyntheticLambda5;->f$6:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Le/L$$ExternalSyntheticLambda5;->f$0:Le/t;

    iget v1, p0, Le/L$$ExternalSyntheticLambda5;->f$1:F

    iget-object v2, p0, Le/L$$ExternalSyntheticLambda5;->f$2:Le/W0;

    iget v3, p0, Le/L$$ExternalSyntheticLambda5;->f$3:F

    iget-object v4, p0, Le/L$$ExternalSyntheticLambda5;->f$5:Le/D;

    invoke-static/range {v0 .. v6}, La/l;->a(Le/t;FLe/W0;FLe/D;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
