.class public final synthetic Le/L$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic f$1:Le/t;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:J

.field public final synthetic f$6:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;Le/t;FFJLkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/L$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput-object p2, p0, Le/L$$ExternalSyntheticLambda0;->f$1:Le/t;

    iput p3, p0, Le/L$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Le/L$$ExternalSyntheticLambda0;->f$3:F

    iput-wide p5, p0, Le/L$$ExternalSyntheticLambda0;->f$4:J

    iput-object p7, p0, Le/L$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Le/L$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/L$$ExternalSyntheticLambda0;->f$7:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v8

    iget-object v0, p0, Le/L$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget-object v1, p0, Le/L$$ExternalSyntheticLambda0;->f$1:Le/t;

    iget v2, p0, Le/L$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Le/L$$ExternalSyntheticLambda0;->f$3:F

    iget-wide v4, p0, Le/L$$ExternalSyntheticLambda0;->f$4:J

    iget-object v6, p0, Le/L$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v8}, La/l;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;Le/t;FFJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
