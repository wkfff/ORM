{
      ORM Brasil � um ORM simples e descomplicado para quem utiliza Delphi

                   Copyright (c) 2016, Isaque Pinheiro
                          All rights reserved.

                    GNU Lesser General Public License
                      Vers�o 3, 29 de junho de 2007

       Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>
       A todos � permitido copiar e distribuir c�pias deste documento de
       licen�a, mas mud�-lo n�o � permitido.

       Esta vers�o da GNU Lesser General Public License incorpora
       os termos e condi��es da vers�o 3 da GNU General Public License
       Licen�a, complementado pelas permiss�es adicionais listadas no
       arquivo LICENSE na pasta principal.
}

{ @abstract(ORMBr Framework.)
  @created(20 Jul 2016)
  @author(Isaque Pinheiro <isaquepsp@gmail.com>)
  @author(Skype : ispinheiro)

  ORM Brasil � um ORM simples e descomplicado para quem utiliza Delphi.
}

unit ormbr.controller.abstract;

interface

uses
  ormbr.factory.interfaces,
  ormbr.container.objectset.interfaces,
  ormbr.container.dataset.interfaces;

type
  TControllerAbstract<M: class, constructor> = class abstract
  protected
    FConnection: IDBConnection;
    FContainerDataSet: IContainerDataSet<M>;
    FContainerObjectSet: IContainerObjectSet<M>;
  public
    constructor Create(AConnection: IDBConnection;
    AContainerDataSet: IContainerDataSet<M>; AContainerObjectSet: IContainerObjectSet<M>); virtual;
  end;

implementation

{ TControllerAbstract<M> }

constructor TControllerAbstract<M>.Create(AConnection: IDBConnection;
  AContainerDataSet: IContainerDataSet<M>; AContainerObjectSet: IContainerObjectSet<M>);
begin
  FConnection := AConnection;
  FContainerDataSet := AContainerDataSet;
  FContainerObjectSet := AContainerObjectSet;
end;

end.
