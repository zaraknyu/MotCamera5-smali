.class public final Le/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Le/D;

.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/D;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/F;->a:Le/D;

    iput-object p2, p0, Le/F;->b:Landroidx/compose/runtime/MutableState;

    iput p3, p0, Le/F;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    move-result-wide v4

    sget-wide v6, Landroidx/compose/ui/input/key/Key;->DirectionUp:J

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    const-wide v6, 0xffffffffL

    const/16 v1, 0x20

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    neg-float p1, v0

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    :goto_1
    int-to-long v8, p1

    shl-long v0, v4, v1

    and-long v4, v8, v6

    or-long/2addr v0, v4

    goto :goto_2

    :cond_1
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->DirectionRight:J

    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v4, p1

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    goto :goto_1

    :cond_2
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->DirectionDown:J

    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v4, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    goto :goto_1

    :cond_3
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->DirectionLeft:J

    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    neg-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v4, p1

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    goto :goto_1

    :cond_4
    move-wide v0, v2

    :goto_2
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Le/F;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/M;

    iget v2, p0, Le/F;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iget-object v3, p0, Le/F;->a:Le/D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v3, Le/D;->b:Le/B;

    const-string v2, "cropState"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Le/M;->a:F

    neg-float v2, v2

    invoke-static {v2, v0, v1}, La/l;->a(FJ)J

    move-result-wide v5

    iget-object v4, p1, Le/M;->c:Ljava/util/List;

    iget-wide v7, p1, Le/M;->d:J

    invoke-virtual/range {v3 .. v9}, Le/D;->a(Ljava/util/List;JJLjava/util/List;)J

    move-result-wide v0

    iget-object p1, p1, Le/M;->b:Le/t;

    invoke-virtual {p1, v9, v0, v1}, Le/t;->a(Ljava/util/List;J)Le/t;

    move-result-object p1

    iget-object v0, p0, Le/B;->a:Lkotlin/jvm/functions/Function1;

    check-cast v0, Lc/a$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Lc/a$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Le/B;->b:Lkotlin/jvm/functions/Function1;

    check-cast p0, Le/J$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Le/J$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
