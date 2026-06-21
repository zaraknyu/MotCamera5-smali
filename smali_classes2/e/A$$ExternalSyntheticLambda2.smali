.class public final synthetic Le/A$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic f$1:J

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:J

.field public final synthetic f$7:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/Modifier;FFJLkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/A$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput-wide p2, p0, Le/A$$ExternalSyntheticLambda2;->f$1:J

    iput p4, p0, Le/A$$ExternalSyntheticLambda2;->f$2:F

    iput-object p5, p0, Le/A$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/Modifier;

    iput p6, p0, Le/A$$ExternalSyntheticLambda2;->f$4:F

    iput p7, p0, Le/A$$ExternalSyntheticLambda2;->f$5:F

    iput-wide p8, p0, Le/A$$ExternalSyntheticLambda2;->f$6:J

    iput-object p10, p0, Le/A$$ExternalSyntheticLambda2;->f$7:Lkotlin/jvm/functions/Function1;

    iput p11, p0, Le/A$$ExternalSyntheticLambda2;->f$8:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/A$$ExternalSyntheticLambda2;->f$8:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v11

    iget-object v0, p0, Le/A$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget-wide v1, p0, Le/A$$ExternalSyntheticLambda2;->f$1:J

    iget v3, p0, Le/A$$ExternalSyntheticLambda2;->f$2:F

    iget-object v4, p0, Le/A$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/Modifier;

    iget v5, p0, Le/A$$ExternalSyntheticLambda2;->f$4:F

    iget v6, p0, Le/A$$ExternalSyntheticLambda2;->f$5:F

    iget-wide v7, p0, Le/A$$ExternalSyntheticLambda2;->f$6:J

    iget-object v9, p0, Le/A$$ExternalSyntheticLambda2;->f$7:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v11}, La/l;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/Modifier;FFJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
