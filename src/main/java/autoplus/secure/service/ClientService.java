package autoplus.secure.service;

import autoplus.secure.entity.Client;

import java.util.List;

/**
 * Created by Admin on 19.08.2016.
 */
public interface ClientService {
    Client getClientById(int id);
    List<Client> getAllClient();
    Client editClient(Client client);
    Client addClient(Client client);
}
