.class public final synthetic Le/x$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Le/i1;

.field public final synthetic f$1:Le/i1;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/ui/text/font/SystemFontFamily;

.field public final synthetic f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Le/i1;Le/i1;ZLandroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/x$$ExternalSyntheticLambda0;->f$0:Le/i1;

    iput-object p2, p0, Le/x$$ExternalSyntheticLambda0;->f$1:Le/i1;

    iput-boolean p3, p0, Le/x$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Le/x$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/font/SystemFontFamily;

    iput-object p5, p0, Le/x$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p6, p0, Le/x$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le/x$$ExternalSyntheticLambda0;->f$5:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Le/x$$ExternalSyntheticLambda0;->f$0:Le/i1;

    iget-object v1, p0, Le/x$$ExternalSyntheticLambda0;->f$1:Le/i1;

    iget-boolean v2, p0, Le/x$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Le/x$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/font/SystemFontFamily;

    iget-object v4, p0, Le/x$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v6}, Le/x;->a(Le/i1;Le/i1;ZLandroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
