.class public final synthetic Le/m0$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lc/X;

.field public final synthetic f$1:Lc/s1;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic f$5:Lc/a;

.field public final synthetic f$6:F

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lc/X;Lc/s1;IFLandroidx/compose/ui/graphics/AndroidImageBitmap;Lc/a;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m0$$ExternalSyntheticLambda4;->f$0:Lc/X;

    iput-object p2, p0, Le/m0$$ExternalSyntheticLambda4;->f$1:Lc/s1;

    iput p3, p0, Le/m0$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Le/m0$$ExternalSyntheticLambda4;->f$3:F

    iput-object p5, p0, Le/m0$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput-object p6, p0, Le/m0$$ExternalSyntheticLambda4;->f$5:Lc/a;

    iput p7, p0, Le/m0$$ExternalSyntheticLambda4;->f$6:F

    iput p8, p0, Le/m0$$ExternalSyntheticLambda4;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/m0$$ExternalSyntheticLambda4;->f$7:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v8

    iget-object v0, p0, Le/m0$$ExternalSyntheticLambda4;->f$0:Lc/X;

    iget-object v1, p0, Le/m0$$ExternalSyntheticLambda4;->f$1:Lc/s1;

    iget v2, p0, Le/m0$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Le/m0$$ExternalSyntheticLambda4;->f$3:F

    iget-object v4, p0, Le/m0$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget-object v5, p0, Le/m0$$ExternalSyntheticLambda4;->f$5:Lc/a;

    iget v6, p0, Le/m0$$ExternalSyntheticLambda4;->f$6:F

    invoke-static/range {v0 .. v8}, Le/m0;->a(Lc/X;Lc/s1;IFLandroidx/compose/ui/graphics/AndroidImageBitmap;Lc/a;FLandroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
