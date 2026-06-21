.class public final synthetic Le/m0$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;FFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m0$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput p2, p0, Le/m0$$ExternalSyntheticLambda2;->f$3:F

    iput p3, p0, Le/m0$$ExternalSyntheticLambda2;->f$4:F

    iput p4, p0, Le/m0$$ExternalSyntheticLambda2;->f$5:F

    iput p5, p0, Le/m0$$ExternalSyntheticLambda2;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/m0$$ExternalSyntheticLambda2;->f$6:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v5

    iget-object v0, p0, Le/m0$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget v1, p0, Le/m0$$ExternalSyntheticLambda2;->f$3:F

    iget v2, p0, Le/m0$$ExternalSyntheticLambda2;->f$4:F

    iget v3, p0, Le/m0$$ExternalSyntheticLambda2;->f$5:F

    invoke-static/range {v0 .. v5}, Le/m0;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;FFFLandroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
