.class public final synthetic Lf/u$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lf/u;


# direct methods
.method public synthetic constructor <init>(Lf/u;I)V
    .locals 0

    iput p2, p0, Lf/u$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lf/u$$ExternalSyntheticLambda2;->f$0:Lf/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf/u$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lf/u$$ExternalSyntheticLambda2;->f$0:Lf/u;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf/u;->b:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf/u;->c:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
