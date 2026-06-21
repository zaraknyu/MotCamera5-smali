.class public final Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

.field public static final INSTANCE$1:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;-><init>(II)V

    sput-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->INSTANCE$1:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    new-instance v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;-><init>(II)V

    sput-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/Map;

    new-instance p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;)V

    return-object p0

    :pswitch_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
