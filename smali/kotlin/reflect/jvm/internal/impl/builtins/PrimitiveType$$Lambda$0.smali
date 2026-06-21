.class public final Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType$$Lambda$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->arrayTypeName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->typeName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
