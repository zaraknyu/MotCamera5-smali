.class public abstract Landroidx/compose/runtime/changelist/Operation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final ints:I

.field public final objects:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/changelist/Operation;->$r8$classId:I

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIIB)V

    return-void
.end method

.method public synthetic constructor <init>(IIIB)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/runtime/changelist/Operation;->$r8$classId:I

    iput p1, p0, Landroidx/compose/runtime/changelist/Operation;->ints:I

    iput p2, p0, Landroidx/compose/runtime/changelist/Operation;->objects:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanAfter(Landroidx/compose/runtime/changelist/Operation;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/changelist/Operation;->ints:I

    iget p0, p0, Landroidx/compose/runtime/changelist/Operation;->objects:I

    add-int/2addr v0, p0

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIIB)V

    return-object p0
.end method

.method public static booleanFirst()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIIB)V

    return-object v0
.end method


# virtual methods
.method public abstract execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/changelist/Operation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
